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
      if myData[messageTag]?
        return myData[messageTag]
      else
        return "undefined"

    # (String, String) => Any
    getFromUser = (messageSource, messageTag) ->
      if userData[messageSource] && userData[messageSource][messageTag]?
        return userData[messageSource][messageTag]
      else
        return "undefined"

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

    # (String) => ()
    broadcastView = (name) ->
        Gallery.broadcastView(name)

    # (String) => ()
    broadcastPlot = (name) ->
        Gallery.broadcastPlot(name)

    # (String) => ()
    broadcastText = (text) ->
        Gallery.broadcastText(text)

    # (List) => ()
    broadcastAvatar = (shape, color, text) ->
        Gallery.broadcastAvatar(shape, color, text)

    # () => ()
    clearBroadcast = () ->
        Gallery.clearBroadcast()

    # (String, String) => ()
    compileObserverCode = (key, value) ->
        session.compileObserverCode(key, value)

    # (Number, String, String) => ()
    compileTurtleCode = (who, key, value) ->
        session.compileTurtleCode(who, key, value)

    # (Number, Number, String, String) => ()
    compilePatchCode = (pxcor, pycor, key, value) ->
        session.compilePatchCode(pxcor, pycor, key, value)

    # (String) => ()
    runObserverCode = (key) ->
        session.runObserverCode(key)

    # (Number, String) => ()
    runTurtleCode = (who, key) ->
        session.runTurtleCode(who, key)

    # (Number, Number, String) => ()
    runPatchCode = (pxcor, pycor, key) ->
        session.runPatchCode(pxcor, pycor, key)

    # () => (String)
    whoAmI = () ->
        return Gallery.whoAmI()

    # (String, Any) => ()
    addToStream = (messageTag, message) ->
      socket.emit('send stream reporter', {
        hubnetMessageSource: "server",
        hubnetMessageTag: messageTag,
        hubnetMessage: message })
      return

    # (String) => Any
    getStream = (messageTag) ->
      if myStreamData[messageTag]?
        return myStreamData[messageTag]
      else
        return undefined

    # (String, String) => Any
    getStreamFromUser = (messageSource, messageTag) ->
      if userStreamData[messageSource] && userStreamData[messageSource][messageTag]?
        stream = userStreamData[messageSource][messageTag]
        userStreamData[messageSource][messageTag] = []
        return stream
      else
        return undefined

    # () => ()
    showPatches = () ->
        Gallery.showPatches()

    # () => ()
    hidePatches = () ->
        Gallery.hidePatches()

    # (String) => ()
    importWorld = (filename) ->
        Gallery.importWorld(filename)

    # (String) => ()
    exportWorld = (filename) ->
        Gallery.exportWorld(filename)

    {
      name: "gbcc"
    , prims: {
                              "SET": set
      ,                       "GET": get
      ,             "GET-FROM-USER": getFromUser
      ,             "STORE-GLOBALS": storeGlobals
      ,           "RESTORE-GLOBALS": restoreGlobals
      , "RESTORE-GLOBALS-FROM-USER": restoreGlobalsFromUser
      ,      "BROADCAST-VIEW": broadcastView
      , "BROADCAST-PLOT": broadcastPlot
      , "BROADCAST-AVATAR": broadcastAvatar
      , "BROADCAST-TEXT": broadcastText
      , "CLEAR-BROADCAST": clearBroadcast
      ,     "COMPILE-OBSERVER-CODE": compileObserverCode
      ,       "COMPILE-TURTLE-CODE": compileTurtleCode
      ,        "COMPILE-PATCH-CODE": compilePatchCode
      ,         "RUN-OBSERVER-CODE": runObserverCode
      ,           "RUN-TURTLE-CODE": runTurtleCode
      ,            "RUN-PATCH-CODE": runPatchCode
      ,                  "WHO-AM-I": whoAmI
      , "ADD-TO-STREAM": addToStream
      , "GET-STREAM": getStream
      , "GET-STREAM-FROM-USER": getStreamFromUser
      , "SHOW-PATCHES": showPatches
      , "HIDE-PATCHES": hidePatches
      , "IMPORT-WORLD": importWorld
      , "EXPORT-WORLD": exportWorld
      }
    }
}
