# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports =
  class HubnetManager

      # Reporters
      HubnetManager = ->
        # commands
        @_hubnetFetchMessage = bind(@_hubnetFetchMessage, this)
        @_hubnetSend = bind(@_hubnetSend, this)
        @_gbccRunCode = bind(@_gbccRunCode, this)
        @_gbccWait = bind(@_gbccWait, this)
        @_gbccSet = bind(@_gbccSet, this)
        @_gbccSetGlobals = bind(@_gbccSetGlobals, this)
        @_gbccBroadcast = bind(@_gbccBroadcast, this)
        @_gbccGetGlobals = bind(@_gbccGetGlobals, this)

        # reporters
        @_evalCmd = bind(@_evalCmd, this)
        @_gbccGetFromUser = bind(@_gbccGetFromUser, this)
        @_gbccGet = bind(@_gbccGet, this)

        # getters and setters
        @_getHubnetMessageWaiting = bind(@_getHubnetMessageWaiting, this)
        @_setHubnetMessageWaiting = bind(@_setHubnetMessageWaiting, this)
        @_getHubnetEnterMessage = bind(@_getHubnetEnterMessage, this)
        @_setHubnetEnterMessage = bind(@_setHubnetEnterMessage, this)
        @_getHubnetExitMessage = bind(@_getHubnetExitMessage, this)
        @_setHubnetExitMessage = bind(@_setHubnetExitMessage, this)
        @_getHubnetMessage = bind(@_getHubnetMessage, this)
        @_setHubnetMessage = bind(@_setHubnetMessage, this)
        @_getHubnetMessageSource = bind(@_getHubnetMessageSource, this)
        @_setHubnetMessageSource = bind(@_setHubnetMessageSource, this)
        @_getHubnetMessageTag = bind(@_getHubnetMessageTag, this)
        @_setHubnetMessageTag = bind(@_setHubnetMessageTag, this)
        return

      # () => String
      getHubnetMessageWaiting: ->
        hubnetMessageWaiting

      # (String) => Unit
      setHubnetMessageWaiting: (messageWaiting) ->
        hubnetMessageWaiting = messageWaiting
        return

      # () => String
      getHubnetEnterMessage: ->
        hubnetEnterMessage

      # (String) => Unit
      setHubnetEnterMessage: (enterMessage) ->
        hubnetEnterMessage = enterMessage
        return

      # () => String
      getHubnetExitMessage: ->
        hubnetExitMessage

      # (String) => Unit
      setHubnetExitMessage: (exitMessage) ->
        hubnetExitMessage = exitMessage
        return

      # () => String
      getHubnetMessage: ->
        hubnetMessage

      # (String) => Unit
      setHubnetMessage: (message) ->
        hubnetMessage = message
        return

      # () => String
      getHubnetMessageSource: ->
        hubnetMessageSource

      # (String) => Unit
      setHubnetMessageSource: (messageSource) ->
        hubnetMessageSource = messageSource
        return

      # () => String
      getHubnetMessageTag: ->
        hubnetMessageTag

      # (String) => Unit
      setHubnetMessageTag: (messageTag) ->
        hubnetMessageTag = messageTag
        return

      # Commands

      # () => Unit
      hubnetFetchMessage: ->
        processCommand commandQueue.shift()
        return

      # (String, String, Any) => Unit
      hubnetSend: (messageSource, messageTag, message) ->
        socket.emit 'send reporter',
          hubnetMessageSource: messageSource
          hubnetMessageTag: messageTag
          hubnetMessage: message
        return

      # (String) => Unit
      gbccRunCode: (x) ->
        #console.log(x.replace(/[\n\r]/g, ' '))
        if $('.netlogo-tab-content.netlogo-command-center').length == 0
          $('#console-toggle').click()
        session.widgetController.ractive.findComponent('console').fire 'run', x
        return

      # (Any) => Any
      evalCmd: (cmd, args) ->
        if cmd == 'echo'
          args
        else
          undefined

      # (Number) => Unit
      gbccWait: (seconds) ->
        console.log 'TO DO: wait ' + seconds + ' seconds'
        return

      # () => Unit
      gbccSetGlobals: ->
        console.log 'gbccSetGlobals'
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          #console.log("set "+globalVars[globalVar]+" "+world.observer.getGlobal(globalVars[globalVar]));
          socket.emit 'send reporter',
            hubnetMessageSource: 'server'
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar])
        return

      # (String) => Unit
      gbccGetGlobals: (messageSource) ->
        globalVars = world.observer.varNames()
        for globalVar of globalVars
          socket.emit 'get reporter',
            hubnetMessageSource: messageSource
            hubnetMessageTag: globalVars[globalVar]
            hubnetMessage: world.observer.getGlobal(globalVars[globalVar])
        return

      is_chrome = navigator.userAgent.indexOf('Chrome') > -1
      is_explorer = navigator.userAgent.indexOf('MSIE') > -1
      is_firefox = navigator.userAgent.indexOf('Firefox') > -1
      is_safari = navigator.userAgent.indexOf('Safari') > -1
      is_opera = navigator.userAgent.toLowerCase().indexOf('op') > -1
      if is_chrome and is_safari
        is_safari = false
      if is_chrome and is_opera
        is_chrome = false
      # Supported: gbcc-broadcast ["canvas"]
      # Supported: [["plot" "populations"]]
      # Not Supported: gbcc-broadcast [["plot" "Percent Similar"] ["plot" "Number-unhappy"] "canvas" ]

      # (List) => Unit
      gbccBroadcast: (args) ->
        miniCanvasId = undefined
        miniCanvas = undefined
        miniCtx = undefined
        message = undefined
        canvasLength = undefined
        canvasWidth = undefined
        imageQuality = undefined
        svgData = undefined
        img = undefined
        plotWidth = undefined
        plotHeight = undefined
        ratio = undefined
        max = undefined
        width = undefined
        length = undefined
        plotName = undefined
        matchingPlots = undefined
        i = 0
        while i < args.length
          if is_safari
            miniCanvasId = 'miniSafariCanvas'
            canvasLength = 200
            canvasWidth = 200
            imageQuality = 0.5
          else
            miniCanvasId = 'miniCanvas'
            canvasLength = 500
            canvasWidth = 500
            imageQuality = 0.75
          if typeof args[i] == 'string' and args[i] == 'canvas'
            miniCanvas = document.getElementById(miniCanvasId)
            miniCtx = miniCanvas.getContext('2d')
            miniCtx.drawImage document.getElementsByClassName('netlogo-canvas')[0], 0, 0, canvasLength, canvasWidth
            message = document.getElementById(miniCanvasId).toDataURL('image/jpeg', imageQuality)
            socket.emit 'send reporter',
              hubnetMessageSource: 'all-users'
              hubnetMessageTag: 'canvas'
              hubnetMessage: message
          if typeof args[i] == 'object' and args[i][0] == 'plot'
            if args[i][1] and typeof args[i][1] == 'string'
              plotName = args[i][1]
              matchingPlots = $('svg').filter(->
                if $('.highcharts-title tspan', this).text()
                  return this
                return
              )
              plotWidth = $(matchingPlots[0]).width()
              plotHeight = $(matchingPlots[0]).height()
              ratio = plotWidth / plotHeight
              max = canvasWidth
              width = max
              height = max
              if plotWidth > plotHeight then (height = width / ratio) else (width = height * ratio)
              if matchingPlots.length > 0
                miniCanvas = document.getElementById(miniCanvasId)
                miniCtx = miniCanvas.getContext('2d')
                img = document.createElement('img')
                svgData = (new XMLSerializer).serializeToString(matchingPlots[0])
                img.setAttribute 'src', 'data:image/svg+xml;base64,' + btoa(unescape(encodeURIComponent(svgData)))

                img.onload = ->
                  miniCtx.fillStyle = '#FFFFFF'
                  miniCtx.fillRect 0, 0, max, max
                  miniCtx.fillStyle = '#000000'
                  miniCtx.fillRect 0, 0, width, height + 2
                  miniCtx.drawImage img, 1, 1, width - 2, height
                  message = document.getElementById(miniCanvasId).toDataURL('image/jpeg', imageQuality)
                  socket.emit 'send reporter',
                    hubnetMessageSource: 'all-users'
                    hubnetMessageTag: 'canvas'
                    hubnetMessage: message
                  return
          i++
        return

      # (String, Any) => Unit
      gbccSet: (messageTag, message) ->
        socket.emit 'send reporter',
          hubnetMessageSource: 'server'
          hubnetMessageTag: messageTag
          hubnetMessage: message
        myData[messageTag] = message
        return

      # (String, String) => (Any)
      gbccGetFromUser: (messageSource, messageTag) ->
        userData[messageTag]

      # (String) => (Any)
      gbccGet: (messageTag) ->
        myData[messageTag]

      processCommand = (m) ->
        #console.log(m.messageSource+" "+m.messageTag+" "+m.message);
        if commandQueue.length == 0
          setHubnetMessageWaiting false
        setHubnetEnterMessage false
        setHubnetExitMessage false
        setHubnetMessageSource m.messageSource
        setHubnetMessageTag m.messageTag
        setHubnetMessage m.message
        if m.messageTag == 'hubnet-enter-message'
          setHubnetEnterMessage true
        if m.messageTag == 'hubnet-exit-message'
          setHubnetExitMessage true
        return