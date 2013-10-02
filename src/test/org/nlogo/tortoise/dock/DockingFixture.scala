// (C) Uri Wilensky. https://github.com/NetLogo/NetLogo

package org.nlogo.tortoise
package dock

import
  org.nlogo.{ api, headless, mirror, nvm },
  headless.lang._,
  org.nlogo.util.MersenneTwisterFast,
  org.scalatest.Assertions._

trait DockingSuite extends org.scalatest.fixture.FunSuite {
  type FixtureParam = DockingFixture
  override def withFixture(test: OneArgTest) = {
    val fixture = new DockingFixture(test.name)
    try withFixture(test.toNoArgTest(fixture))
    finally fixture.workspace.dispose()
  }
}

class DockingFixture(name: String) extends Fixture(name) {

  val rhino = new Rhino
  def mirrorables: Iterable[mirror.Mirrorable] =
    mirror.Mirrorables.allMirrorables(workspace.world, Seq())
  var state: mirror.Mirroring.State = Map()
  var opened = false

  workspace.flags =
    nvm.CompilerFlags(
      useOptimizer = false, // since the Tortoise compiler sees the unoptimized code
                            //   and some optimizations may affect results ordering
                            //   and/or RNG interaction
      useGenerator = false  // just to save on compilation time
    )

  def compare(reporter: String) {
    runReporter(Reporter(reporter,
        try {
          Success(api.Dump.logoObject(workspace.report(reporter)))
        } catch {
          case ex : Exception => RuntimeError(ex.getMessage)
        }
        ))
  }

  override def runReporter(reporter: Reporter, mode: TestMode) {
    if (!opened) declare("")
    val compiledJS = Compiler.compileReporter(
      reporter.reporter, workspace.procedures, workspace.world.program)
    reporter.result match {
      case Success(expected) =>
        withClue(reporter.reporter) {
          assertResult(expected) {
            api.Dump.logoObject(
              evalJS(compiledJS))
          }
        }
      case _: RuntimeError =>
        try {
          evalJS(compiledJS)
          throw new IllegalStateException("Error in headless, not in JS")
        } catch {
          case ex: IllegalStateException => throw ex
          case _: Exception =>
        }
      case _ =>
        throw new IllegalStateException
    }
  }

  override def runCommand(command: Command, mode: TestMode) {
    if (!opened) declare("")
    import command.{ command => logo }
    // println(s"logo = $logo")
    workspace.clearOutput()

    val (headlessException, exceptionOccurredInHeadless) =
      try {
        workspace.command(logo)
        (Unit, false)
      } catch {
        case ex: Exception => (ex, true)
      }
    val (newState, update) = mirror.Mirroring.diffs(state, mirrorables)
    state = newState
    // println(s"state = $state")
    // println(s"update = $update")
    val expectedJson = "[" + JSONSerializer.serialize(update) + "]"
    // println(s"expectedJson = $expectedJson")
    val expectedOutput = workspace.outputAreaBuffer.toString
    val compiledJS = Compiler.compileCommands(logo, workspace.procedures, workspace.world.program)
    val (exceptionOccurredInJS, (actualOutput, actualJson)) =
      try {
        (false, runJS(compiledJS))
      } catch {
        case e: Exception =>
          if (!exceptionOccurredInHeadless)
            e.printStackTrace()
          (true, ("", ""))
      }
    if(exceptionOccurredInHeadless && !exceptionOccurredInJS) {
      throw new IllegalStateException("Exception occurred in headless but not JS: " + headlessException)
    } else if(!exceptionOccurredInHeadless && exceptionOccurredInJS) {
      throw new IllegalStateException("Exception occurred in JS but not headless")
    } else if(exceptionOccurredInHeadless && exceptionOccurredInJS) {
    } else {
      assertResult(expectedOutput)(actualOutput)
      rhino.eval("expectedUpdates = " + expectedJson)
      rhino.eval("actualUpdates = " + actualJson)
      rhino.eval("expectedModel.updates(expectedUpdates)")
      rhino.eval("actualModel.updates(actualUpdates)")
      val expectedModel = rhino.eval("JSON.stringify(expectedModel)").asInstanceOf[String]
      val actualModel = rhino.eval("JSON.stringify(actualModel)").asInstanceOf[String]
      // println(" exp upt = " + expectedJson)
      // println(" act upt = " + actualJson)
      // println("expected = " + expectedModel)
      // println("  actual = " + actualModel)
      org.skyscreamer.jsonassert.JSONAssert.assertEquals(
        expectedModel, actualModel, true)  // strict = true
      assert(workspace.world.mainRNG.save == rhino.eval("Random.save()"),
        "divergent RNG state")
    }
    // println()
  }

  // use single-patch world by default to keep generated JSON to a minimum
  override val defaultDimensions = api.WorldDimensions.square(0)

  override def declare(logo: String, dimensions: api.WorldDimensions = defaultDimensions) {
    require(!opened)
    super.declare(logo, dimensions)
    val (js, _, _) = Compiler.compileProcedures(logo, dimensions)
    evalJS(js)
    state = Map()
    rhino.eval("expectedModel = new AgentModel")
    rhino.eval("actualModel = new AgentModel")
    opened = true
    runCommand(Command("clear-all random-seed 0"))
  }

  // these two are super helpful when running failing tests
  // the show the javascript before it gets executed.
  // TODO: what is the difference between eval and run?
  def evalJS(javascript: String) = {
    //println(javascript)
    rhino.eval(javascript)
  }

  def runJS(javascript: String): (String, String) = {
    //println(javascript)
    rhino.run(javascript)
  }

}