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
    connectWhoToObject = (who, name) ->
        Physics.connectWhoToObject(who, name)

    # (Number, String) => ()
    disconnectWho = (who, name) ->
        Physics.disconnectWho(who)

    # (String) => ()
    deleteObject = (name) ->
        Physics.deleteObject(name)

    # (String) => List
    getObject = (name, key) ->
        return Physics.getObject(name, key)

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
        "CONNECT-WHO-TO-OBJECT": connectWhoToObject
        "DISCONNECT-WHO": disconnectWho,
        "GET-OBJECT": getObject,
        "REMOVE": removePhysics,
        "PATCH-TO-WORLD": patchToWorld,
        "WORLD-TO-PATCH": worldToPatch,
        "GET-OBJECTS": getObjects
      }
    }
}
