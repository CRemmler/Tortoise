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

    # (String, List) => ()
    updateObject = (name, settings) ->
        Physics.updateObject(name, settings)

    # (String, List) => ()
    applyForce = (name, settings) ->
        Physics.applyForce(name, settings)

    # (Number, String) => ()
    connectToObject = (who, name) ->
        Physics.connectToObject(who, name)

    # (Number, String) => ()
    disconnectFromObject = (who, name) ->
        Physics.disconnectFromObject(who, name)

    # (String) => ()
    deleteObject = (name) ->
        Physics.deleteObject(name)

    # (String) => List
    getObject = (name) ->
        return Physics.getObject(name)

    # () => List
    getObjects = () ->
        return Physics.getObjects()

    # () => ()
    removePhysics = () ->
      Physics.removePhysics()
      return

    # (List) => List
    patchToWorld = (coords) ->
        return Physics.patchToWorld(coords)

    # (List) => List
    worldToPatch = (coords) ->
        return Physics.worldToPatch(coords)

    {
      name: "physics"
    , prims: {
        "IMPORT": importPhysics,
        "CREATE-OBJECT": createObject,
        "UPDATE-OBJECT": updateObject,
        "DELETE-OBJECT": deleteObject,
        "CONNECT-TO-OBJECT": connectToObject
        "DISCONNECT-FROM-OBJECT": disconnectFromObject,
        "GET-OBJECT": getObject,
        "REMOVE": removePhysics,
        "PATCH-TO-WORLD": patchToWorld,
        "WORLD-TO-PATCH": worldToPatch,
        "GET-OBJECTS": getObjects
      }
    }
}
