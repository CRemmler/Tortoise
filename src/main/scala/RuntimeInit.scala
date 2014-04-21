// (C) Uri Wilensky. https://github.com/NetLogo/NetLogo

package org.nlogo.tortoise

import org.nlogo.{ core, api }

// RuntimeInit generates JavaScript code that does any initialization that needs to happen
// before any user code runs, for example creating patches

class RuntimeInit(program: api.Program, model: core.Model) {

  import scala.collection.JavaConverters._
  import org.nlogo.tortoise.json.JSONSerializer

  def init = {
    def shapeList(shapes: api.ShapeList) =
      if(shapes.getNames.isEmpty)
        "{}"
      else
        JSONSerializer.serialize(shapes)
    val turtleShapesJson = shapeList(CompilerService.parseTurtleShapes(model.turtleShapes.toArray))
    val linkShapesJson = shapeList(CompilerService.parseLinkShapes(model.linkShapes.toArray))
    val view = model.view
    import view._
    val workspaceArgs = s"$minPxcor, $maxPxcor, $minPycor, $maxPycor, $patchSize, " +
      s"$wrappingAllowedInX, $wrappingAllowedInY, $turtleShapesJson, $linkShapesJson, " +
      s"${program.interfaceGlobals.size}"

    globals + turtlesOwn + patchesOwn + linksOwn +
     s"""var workspace     = require('engine/workspace')($workspaceArgs);
        |var AgentSet      = workspace.agentSet;
        |var LayoutManager = workspace.layoutManager;
        |var Prims         = workspace.prims;
        |var Updater       = workspace.updater;
        |var world         = workspace.world;
        |var Globals       = world.globals;
        |var TurtlesOwn    = world.turtlesOwn;
        |var PatchesOwn    = world.patchesOwn;
        |var LinksOwn      = world.linksOwn;
        |
        |var Agents     = require('engine/agents');
        |var Call       = require('engine/call');
        |var ColorModel = require('engine/colormodel');
        |var Dump       = require('engine/dump');
        |var Nobody     = require('engine/nobody');
        |var Tasks      = require('engine/tasks');
        |var Trig       = require('engine/trig');
        |
        |var AgentModel     = require('integration/agentmodel');
        |var Denuller       = require('integration/denuller');
        |var notImplemented = require('integration/notimplemented');
        |var StrictMath     = require('integration/strictmath');
        |var typeIsArray    = require('integration/typeisarray');
      """.stripMargin +
      breeds + "\n"
  }

  // if there are any globals,
  // tell the runtime how many there are, it will initialize them all to 0.
  // if not, do nothing.
  def globals = vars(program.globals, "Globals")

  // tell the runtime how many *-own variables there are
  val turtleBuiltinCount =
    api.AgentVariables.getImplicitTurtleVariables.size
  val patchBuiltinCount =
    api.AgentVariables.getImplicitPatchVariables.size
  val linkBuiltinCount =
    api.AgentVariables.getImplicitLinkVariables.size
  def turtlesOwn =
    vars(program.turtlesOwn.drop(turtleBuiltinCount), "TurtlesOwn")
  def patchesOwn =
    vars(program.patchesOwn.drop(patchBuiltinCount), "PatchesOwn")
  def linksOwn =
    vars(program.linksOwn.drop(linkBuiltinCount), "LinksOwn")
  def breeds =
    program.breeds.values.map(
      b =>
        s"""Breeds.add("${b.name}", "${b.singular.toLowerCase}");\n""" +
          s"""Breeds.get("${b.name}").vars =""" +
          b.owns.mkString("[\"", "\", \"", "\"]") +
          ";"
    ).mkString("\n")

  private def vars(s: Seq[String], initPath: String) =
    if (s.nonEmpty) s"$initPath.init(${s.size});\n"
    else ""

}
