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
        return

    # (String) => Any
    get = (messageTag) ->
      if userData[myUserId][messageTag]?
        return userData[myUserId][messageTag]
      else
        return "undefined"

    # (String, String) => Any
    getFromUser = (messageSource, messageTag) ->
      if userData[messageSource] and userData[messageSource][messageTag]?
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

    # (String, String) => ()
    broadcastText = (tag, message) ->
        Gallery.broadcastText(tag, message)

    # (String, String, String) => ()
    broadcastAvatar = (shape, color, text) ->
        Gallery.broadcastAvatar(shape, color, text)

    # () => ()
    clearBroadcasts = () ->
        Gallery.clearBroadcasts()

    # (String) => ()
    clearBroadcast = (name) ->
        Gallery.clearBroadcast(name)

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
        return []

    # (String, String) => Any
    getStreamFromUser = (messageSource, messageTag) ->
      if userStreamData[messageSource] and userStreamData[messageSource][messageTag]?
        stream = userStreamData[messageSource][messageTag]
        userStreamData[messageSource][messageTag] = []
        return stream
      else
        return []

    # () => ()
    showPatches = () ->
        Gallery.showPatches()

    # () => ()
    hidePatches = () ->
        Gallery.hidePatches()

    # (String) => ()
    importOurDataFile = (filename) ->
        GbccFileManager.importOurDataFile(filename)

    # () => ()
    importOurData = () ->
        GbccFileManager.importOurData()

    # (String) => ()
    exportOurData = (filename) ->
        GbccFileManager.exportOurData(filename)

    # (String) => ()
    importMyDataFile = (filename) ->
        GbccFileManager.importMyDataFile(filename)

    # () => ()
    importMyData = () ->
        GbccFileManager.importMyData()

    # (String) => ()
    exportMyData = (filename) ->
        GbccFileManager.exportMyData(filename)

    # (String, String, Any) => ()
    send = (messageSource, messageTag, message) ->
        socket.emit('send message reporter', {
            hubnetMessageSource: messageSource,
            hubnetMessageTag: messageTag,
            hubnetMessage: message })
        return

    # (String, Any) => ()
    broadcast = (messageTag, message) ->
        socket.emit('send message reporter', {
            hubnetMessageSource: 'all-users',
            hubnetMessageTag: messageTag,
            hubnetMessage: message })
        return

    # (String, Number) => ()
    adoptCanvas = (userId, canvasId) ->
        Gallery.adoptCanvas(userId, canvasId)

    # () => (List)
    getCanvasList = () ->
        return Gallery.getCanvasList()

    # () => (List)
    getUserList = () ->
        return Gallery.getUserList()

    # () => (List)
    getVacantIndices = () ->
        return Gallery.getVacantIndices()

    # () => (List)
    getUserList = () ->
        return Gallery.getUserList()

    # () => (List)
    getActiveUserList = () ->
        return Gallery.getActiveUserList()

    # () => (List)
    getFileList = () ->
      return GbccFileManager.getFileList()

    # () => ()
    muteCanvas = (canvasId) ->
       Gallery.muteCanvas(canvasId)

    # (String) => ()
    unmuteCanvas = (canvasId) ->
       Gallery.unmuteCanvas(canvasId)

    # () => (String)
    myRole = () ->
        return Gallery.myRole()

    # () => (String)
    mirroring = () ->
        return Gallery.mirroring()

    # () => ()
    storeState = () ->
        Gallery.storeState()

    # () => ()
    restoreState = () ->
        Gallery.restoreState()

    # (String) => ()
    restoreStateFromUser = (messageSource) ->
        Gallery.restoreStateFromUser(messageSource)

    # (String) => ()
    flipCanvasesTo = (name) ->
       Gallery.flipCanvasesTo(name)


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
      , "CLEAR-BROADCASTS": clearBroadcasts
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
      , "IMPORT-OUR-DATA": importOurData
      , "EXPORT-OUR-DATA": exportOurData
      , "IMPORT-OUR-DATA-FILE": importOurDataFile
      , "IMPORT-MY-DATA": importMyData
      , "EXPORT-MY-DATA": exportMyData
      , "IMPORT-MY-DATA-FILE": importMyDataFile
      , "SEND": send
      , "BROADCAST": broadcast
      , "GET-FILE-LIST": getFileList
      , "GET-CANVAS-LIST": getCanvasList
      , "GET-VACANT-INDICES": getVacantIndices
      , "GET-USER-LIST": getUserList
      , "GET-ACTIVE-USER-LIST": getActiveUserList
      , "ADOPT-CANVAS": adoptCanvas
      , "MUTE-CANVAS": muteCanvas
      , "UNMUTE-CANVAS": unmuteCanvas
      , "MY-ROLE": myRole
      , "MIRRORING": mirroring
      , "STORE-STATE": storeState
      , "RESTORE-STATE": restoreState
      , "RESTORE-STATE-FROM-USER": restoreStateFromUser
      , "FLIP-CANVASES-TO": flipCanvasesTo
      }
    }
}
