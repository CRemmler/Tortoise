# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (List) => ()
    importPhysics = (settings) ->
        Physics.importPhysics(settings)

    # (String, List) => ()
    createObject = (name, settings) ->
        Physics.createObject(name, settings)

    # (Number, String) => ()
    connectToTurtle = (name, who) ->
        Physics.connectToTurtle(name, who)

    # (Number, String) => ()
    disconnectFromTurtle = (name, who) ->
        Physics.disconnectFromTurtle(name, who)

    # (String) => ()
    removeObject = (name) ->
        Physics.removeObject(name)

    # (String) => List
    getObject = (name) ->
        return Maps.getObject(name)

    # () => ()
    clearObject = () ->
      Physics.removePhysics()
      return

    {
      name: "physics"
    , prims: {
        "IMPORT": importPhysics,
        "CREATE-OBJECT": createObject,
        "REMOVE-OBJECT": removeObject,
        "CONNECT-TO-TURTLE": connectToTurtle,
        "DISCONNECT-FROM-TURTLE": disconnectFromTurtle,
        "GET-OBJECT": getObject,
        "REMOVE": removePhysics
      }
    }
}
