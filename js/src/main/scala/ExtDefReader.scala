// (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

package org.nlogo.tortoise

object ExtDefReader {
  // scalastyle:off line.size.limit
  def getAll(): Seq[String] = Seq(
    """{ "name": "codap", "prims": [ { "name": "init", "actionName": "init", "argTypes": ["command"] }, { "name": "call", "actionName": "call", "argTypes": ["wildcard"] } ] }""",
    """{ "name": "nlmap", "prims": [ { "name": "from-list", "actionName": "from-list", "argTypes": ["list"], "returnType": "wildcard" }, { "name": "to-list", "actionName": "to-list", "argTypes": ["wildcard"], "returnType": "list" }, { "name": "is-map?", "actionName": "is-map?", "argTypes": ["wildcard"], "returnType": "boolean" }, { "name": "get", "actionName": "get", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "remove", "actionName": "remove", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "add", "actionName": "add", "argTypes": ["wildcard", "string", "wildcard"], "returnType": "wildcard" } ] }""",
    """{"name":"gbcc","prims":[{"name":"set","actionName":"set","argTypes":["string","wildcard"]},{"name":"get","actionName":"get","argTypes":["string"],"returnType":"wildcard"},{"name":"get-from-user","actionName":"get-from-user","argTypes":["string","string"],"returnType":"wildcard"},{"name":"store-globals","actionName":"store-globals","argTypes":[]},{"name":"restore-globals","actionName":"retore-globals","argTypes":[]},{"name":"restore-globals-from-user","actionName":"restore-globals-from-user","argTypes":["string"]},{"name":"broadcast-to-gallery","actionName":"broadcast-to-gallery","argTypes":["string","string"]},{"name":"compile-observer-code","actionName":"compile-observer-code","argTypes":["string","string"]},{"name":"compile-turtle-code","actionName":"compile-turtle-code","argTypes":["string","number","string"]},{"name":"compile-patch-code","actionName":"compile-patch-code","argTypes":["string","number","number","string"]},{"name":"run-observer-code","actionName":"run-observer-code","argTypes":["string"]},{"name":"run-turtle-code","actionName":"run-turtle-code","argTypes":["number","string"]},{"name":"run-patch-code","actionName":"run-patch-code","argTypes":["number","number","string"]},{"name":"import-drawing","actionName":"import-drawing","argTypes":["list"]}]}"""
  )
  // scalastyle:on line.size.limit
}
