// (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

package org.nlogo.tortoise.compiler

object ExtDefReader {
  // scalastyle:off line.size.limit
  def getAll(): Seq[String] = Seq(
    """{ "name": "codap", "prims": [ { "name": "init", "actionName": "init", "argTypes": ["command"] }, { "name": "call", "actionName": "call", "argTypes": ["wildcard"] } ] }""",

    """{ "name": "nlmap", "prims": [ { "name": "from-list", "actionName": "from-list", "argTypes": ["list"], "returnType": "wildcard" }, { "name": "to-list", "actionName": "to-list", "argTypes": ["wildcard"], "returnType": "list" }, { "name": "is-map?", "actionName": "is-map?", "argTypes": ["wildcard"], "returnType": "boolean" }, { "name": "get", "actionName": "get", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "remove", "actionName": "remove", "argTypes": ["wildcard", "string"], "returnType": "wildcard" }, { "name": "add", "actionName": "add", "argTypes": ["wildcard", "string", "wildcard"], "returnType": "wildcard" }, { "name": "to-json", "actionName": "to-json", "argTypes": ["wildcard"], "returnType": "string" }, { "name": "to-urlenc", "actionName": "to-urlenc", "argTypes": ["wildcard"], "returnType": "string" }, { "name": "from-json", "actionName": "from-json", "argTypes": ["string"], "returnType": "wildcard" } ] }""",

    """{ "name": "logging", "prims": [ { "name": "all-logs", "actionName": "all-logs", "argTypes": [], "returnType": "list" }, { "name": "clear-logs", "actionName": "clear-logs", "argTypes": [], "returnType": "unit" }, { "name": "log-globals", "actionName": "log-globals", "argTypes": [{ "type": "string", "isRepeatable": true }], "returnType": "unit" }, { "name": "log-message", "actionName": "log-message", "argTypes": ["string"], "returnType": "unit" } ] }""",

    """{"name":"gbcc","prims":[{"name":"set","actionName":"set","argTypes":["string","wildcard"]},{"name":"get","actionName":"get","argTypes":["string"],"returnType":"wildcard"},{"name":"get-from-user","actionName":"get-from-user","argTypes":["string","string"],"returnType":"wildcard"},{"name":"store-globals","actionName":"store-globals","argTypes":[]},{"name":"restore-globals","actionName":"retore-globals","argTypes":[]},{"name":"restore-globals-from-user","actionName":"restore-globals-from-user","argTypes":["string"]},{"name":"broadcast-to-gallery","actionName":"broadcast-to-gallery","argTypes":["string","string"]},{"name":"compile-observer-code","actionName":"compile-observer-code","argTypes":["string","string"]},{"name":"compile-turtle-code","actionName":"compile-turtle-code","argTypes":["number","string","string"]},{"name":"compile-patch-code","actionName":"compile-patch-code","argTypes":["number","number","string","string"]},{"name":"run-observer-code","actionName":"run-observer-code","argTypes":["string"]},{"name":"run-turtle-code","actionName":"run-turtle-code","argTypes":["number","string"]},{"name":"run-patch-code","actionName":"run-patch-code","argTypes":["number","number","string"]}]}""",

    """{"name":"image","prims":[{"name":"import","actionName":"import","argTypes":["string"]},{"name":"zoom","actionName":"zoom","argTypes":["number"]},{"name":"reset-zoom","actionName":"reset-zoom","argTypes":[]},{"name":"import-pcolors","actionName":"import-pcolors","argTypes":["string"]},{"name":"clear","actionName":"clear","argTypes":[]},{"name":"import-from-user","actionName":"import-from-user","argTypes":["string"]}]}""",

    """{"name":"graph","prims":[{"name":"equation","actionName":"equation","argTypes":["string","number","number","number","number","number","number","number","number","number"],"returnType":"list"},{"name":"create-point","actionName":"create-point","argTypes":["string","list"]},{"name":"update-point","actionName":"update-point","argTypes":["string","list"]},{"name":"delete-point","actionName":"delete-point","argTypes":["string"]},{"name":"get-point","actionName":"get-point","argTypes":["string"],"returnType":"list"},{"name":"get-points","actionName":"get-points","argTypes":[],"returnType":"list"},{"name":"get-elements","actionName":"get-elements","argTypes":[],"returnType":"list"},{"name":"graph-to-patch","actionName":"graph-to-patch","argTypes":["list"],"returnType":"list"},{"name":"patch-to-graph","actionName":"patch-to-graph","argTypes":["list"],"returnType":"list"},{"name":"eval-command","actionName":"eval-command","argTypes":["string"]},{"name":"eval-command-get-labels","actionName":"eval-command-get-labels","argTypes":["string"],"returnType":"string"},{"name":"eval-command-cas","actionName":"eval-command-cas","argTypes":["string"],"returnType":"string"},{"name":"import","actionName":"import","argTypes":["list"]},{"name":"export","actionName":"export","argTypes":[],"returnType":["list"]},{"name":"remove","actionName":"remove","argTypes":[]}]}""",

    """{"name":"maps","prims":[{"name":"create-marker","actionName":"create-marker","argTypes":["string","list"]},{"name":"update-marker","actionName":"update-marker","argTypes":["string","list"]},{"name":"delete-marker","actionName":"delete-marker","argTypes":["string"]},{"name":"get-marker","actionName":"get-marker","argTypes":["string"],"returnType":"list"},{"name":"get-markers","actionName":"get-markers","argTypes":[],"returnType":"list"},{"name":"lnglat-to-patch","actionName":"lnglat-to-patch","argTypes":["list"],"returnType":"list"},{"name":"patch-to-lnglat","actionName":"patch-to-lnglat","argTypes":["list"],"returnType":"list"},{"name":"import","actionName":"import","argTypes":["list"]},{"name":"export","actionName":"import","argTypes":[],"returnType":"list"},{"name":"remove","actionName":"remove","argTypes":[]}]}""",

    """{"name":"physics","prims":[{"name":"create-object","actionName":"create-object","argTypes":["string","list"]},{"name":"update-object","actionName":"update-object","argTypes":["string","list"]},{"name":"apply-force","actionName":"apply-force","argTypes":["string","list"]},{"name":"delete-object","actionName":"delete-object","argTypes":["string"]},{"name":"get-object","actionName":"get-object","argTypes":["string"],"returnType":"list"},{"name":"get-objects","actionName":"get-objects","argTypes":[],"returnType":"list"},{"name":"world-to-patch","actionName":"world-to-patch","argTypes":["list"],"returnType":"list"},{"name":"patch-to-world","actionName":"patch-to-world","argTypes":["list"],"returnType":"list"},{"name":"connect-to-object","actionName":"connect-to-object","argTypes":["number","string"]},{"name":"disconnect-from-object","actionName":"disconnect-from-object","argTypes":["number","string"]},{"name":"import","actionName":"import","argTypes":["list"]},{"name":"export","actionName":"import","argTypes":[],"returnType":"list"},{"name":"remove","actionName":"remove","argTypes":[]}]}"""

  )
  // scalastyle:on line.size.limit
}
