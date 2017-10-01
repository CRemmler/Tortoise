hubnetMessageWaiting = false
hubnetEnterMessage = false
hubnetExitMessage = false
hubnetMessage = ""
hubnetMessageSource = ""
hubnetMessageTag = ""

module.exports =
  class HubnetManager

      # () => HubnetManager
      constructor: () ->

      # () => String
      _getHubnetMessageWaiting: =>
        hubnetMessageWaiting

      # (String) => Unit
      _setHubnetMessageWaiting: (messageWaiting) =>
        hubnetMessageWaiting = messageWaiting
        return

      # () => String
      _getHubnetEnterMessage: =>
        hubnetEnterMessage

      # (String) => Unit
      _setHubnetEnterMessage: (enterMessage) =>
        hubnetEnterMessage = enterMessage
        return

      # () => String
      _getHubnetExitMessage: =>
        hubnetExitMessage

      # (String) => Unit
      _setHubnetExitMessage: (exitMessage) =>
        hubnetExitMessage = exitMessage
        return

      # () => String
      _getHubnetMessage: =>
        hubnetMessage

      # (String) => Unit
      _setHubnetMessage: (message) =>
        hubnetMessage = message
        return

      # () => String
      _getHubnetMessageSource: =>
        hubnetMessageSource

      # (String) => Unit
      _setHubnetMessageSource: (messageSource) =>
        hubnetMessageSource = messageSource
        return

      # () => String
      _getHubnetMessageTag: =>
        hubnetMessageTag

      # (String) => Unit
      _setHubnetMessageTag: (messageTag) =>
        hubnetMessageTag = messageTag
        return

      # Commands

      # () => Unit
      _hubnetFetchMessage: =>
        processCommand(commandQueue.shift())
        return

      # (String, String, Any) => Unit
      _hubnetSend: (messageSource, messageTag, message) =>
        socket.emit('send reporter', {
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      processCommand = (m) ->
        #console.log(m.messageSource+" "+m.messageTag+" "+m.message);
        if commandQueue.length == 0
          setHubnetMessageWaiting(false)
        setHubnetEnterMessage(false)
        setHubnetExitMessage(false)
        setHubnetMessageSource(m.messageSource)
        setHubnetMessageTag(m.messageTag)
        setHubnetMessage(m.message)
        if m.messageTag == 'hubnet-enter-message' then setHubnetEnterMessage(true)
        if m.messageTag == 'hubnet-exit-message' then setHubnetExitMessage(true)
        return
