// (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

package org.nlogo.tortoise

object ExtDefReader {
  // scalastyle:off line.size.limit
  def getAll(): Seq[String] = Seq(
    """{ "name": "codap", "prims": [ { "name": "init", "actionName": "init", "argTypes": ["command"] }, { "name": "call", "actionName": "call", "argTypes": ["wildcard"] } ] }""",
    """{ "name": "nlmap", "prims": [ { "name": "from-list", "actionName": "from-list", "argTypes": ["list"], "returnType": "wildcard" }, { "name": "to-list", "actionName": "to-list", "argTypes": ["wildcard"], "returnType": "list" }, { "name": "is-map?", "actionName": "is-map?", "argTypes": ["wildcard"], "returnType": "boolean" }, { "name": "get", "actionName": "get", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "remove", "actionName": "remove", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "add", "actionName": "add", "argTypes": ["wildcard", "string", "wildcard"], "returnType": "wildcard" } ] }""",
    """{"name":"gbcc","prims":[{"name":"set","actionName":"set","argTypes":["string","wildcard"]},{"name":"get","actionName":"get","argTypes":["string"],"returnType":"wildcard"},{"name":"get-from-user","actionName":"get-from-user","argTypes":["string","string"],"returnType":"wildcard"},{"name":"set-globals","actionName":"set-globals","argTypes":[]},{"name":"get-globals-from-user","actionName":"get-globals-from-user","argTypes":["string"],"returnType":"wildcard"},{"name":"broadcast-to-gallery","actionName":"broadcast-to-gallery","argTypes":["string","string"]},{"name":"compile-code-and-set","actionName":"compile-code-and-set","argTypes":["string","string"]},{"name":"run-code","actionName":"run-code","argTypes":["string"]}]}"""
  )
  // scalastyle:on line.size.limit
}
