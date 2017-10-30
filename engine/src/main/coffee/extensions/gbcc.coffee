# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (String, Any) => ()
    set = (messageTag, message) ->
        socket.emit('send reporter', {
          hubnetMessageSource: "server",
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        myData[messageTag] = message
        return

    # (String) => Any
    get = (messageTag) ->
        return myData[messageTag]

    # (String, String) => Any
    getFromUser = (messageSource, messageTag) ->
      if userData[messageSource] && userData[messageSource][messageTag] != undefined
        return userData[messageSource][messageTag]
      else
        return undefined

    # () => ()
    storeGlobals = () ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit('send reporter', {
            hubnetMessageSource: 'server'
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar]) })

    # () => ()
    restoreGlobals = () ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit('get reporter', {
            hubnetMessageSource: myUserId
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar]) })

    # (String) => ()
    restoreGlobalsFromUser = (messageSource) ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit('get reporter', {
            hubnetMessageSource: messageSource
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar]) })

    # (String, String) => ()
    broadcastToGallery = (key, value) ->
        Gallery.broadcastToGallery(key, value)

    # () => ()
    display = () ->
        universe.repaint()

    # (List) => ()
    importDrawing = (data) ->
        Interface.importDrawing(data)

    # (String, String) => ()
    compileObserverCode = (code, key) ->
        session.compileObserverCode(code, key)

    # (String, Number, String) => ()
    compileTurtleCode = (code, who, key) ->
        session.compileTurtleCode(code, who, key)

    # (String, Number, Number, String) => ()
    compilePatchCode = (code, pxcor, pycor, key) ->
        session.compilePatchCode(code, pxcor, pycor, key)

    # (String) => ()
    runObserverCode = (key) ->
        session.runObserverCode(key)

    # (Number, String) => ()
    runTurtleCode = (who, key) ->
        session.runTurtleCode(who, key)

    # (Number, Number, String) => ()
    runPatchCode = (pxcor, pycor, key) ->
        session.runPatchCode(pxcor, pycor, key)

    {
      name: "gbcc"
    , prims: {
                              "SET": set
      ,                       "GET": get
      ,             "GET-FROM-USER": getFromUser
      ,             "STORE-GLOBALS": storeGlobals
      ,           "RESTORE-GLOBALS": restoreGlobals
      , "RESTORE-GLOBALS-FROM-USER": restoreGlobalsFromUser
      ,      "BROADCAST-TO-GALLERY": broadcastToGallery
      ,                   "DISPLAY": display
      ,            "IMPORT-DRAWING": importDrawing
      ,     "COMPILE-OBSERVER-CODE": compileObserverCode
      ,       "COMPILE-TURTLE-CODE": compileTurtleCode
      ,        "COMPILE-PATCH-CODE": compilePatchCode
      ,         "RUN-OBSERVER-CODE": runObserverCode
      ,           "RUN-TURTLE-CODE": runTurtleCode
      ,            "RUN-PATCH-CODE": runPatchCode
      }
    }
}
