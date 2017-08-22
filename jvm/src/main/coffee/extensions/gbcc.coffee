# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports =
  (workspace) ->

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
        return myData[messageTag]

    # () => ()
    setGlobals = () ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit('send reporter', {
            hubnetMessageSource: 'server'
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar]) })

    # (String) => (Any)
    getGlobalsFromUser = (messageSource) ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit('get reporter', {
            hubnetMessageSource: messageSource
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar]) })

    # (String String) => ()
    broadcastToGallery = (key, value) ->
        Gallery.broadcastToGallery(key, value)

    # (String, String) => ()
    compileCodeAndSet = (code, key) ->
        session.compileCodeAndSet(code, key)

    # (String) => ()
    runCode = (code) ->
        session.runCode(code)

    {
      name: "gbcc"
    , prims: {
                         "SET": set
      ,                  "GET": get
      ,        "GET-FROM-USER": getFromUser
      ,          "SET-GLOBALS": setGlobals
      ,"GET-GLOBALS-FROM-USER": getGlobalsFromUser
      , "BROADCAST-TO-GALLERY": broadcastToGallery
      , "COMPILE-CODE-AND-SET": compileCodeAndSet
      ,             "RUN-CODE": runCode
      }
    }
