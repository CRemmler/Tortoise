module.exports =
  class HubnetManager

      hubnetMessageWaiting = false
      hubnetEnterMessage = false
      hubnetExitMessage = false
      hubnetMessage = ""
      hubnetMessageSource = ""
      hubnetMessageTag = ""

      # () => HubnetManager
      constructor: () ->
        @_hubnetManager   = new HubnetManager

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
        processCommand = commandQueue.shift()
        return

      # (String, String, Any) => Unit
      hubnetSend: (messageSource, messageTag, message) ->
        socket.emit('send reporter', {
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      processCommand = (m) ->
        #console.log(m.messageSource+" "+m.messageTag+" "+m.message);
        if commandQueue.length == 0
          setHubnetMessageWaiting = false
        setHubnetEnterMessage = false
        setHubnetExitMessage = false
        setHubnetMessageSource = m.messageSource
        setHubnetMessageTag = m.messageTag
        setHubnetMessage = m.message
        if m.messageTag == 'hubnet-enter-message' then setHubnetEnterMessage = true
        if m.messageTag == 'hubnet-exit-message' then setHubnetExitMessage = true
        return
