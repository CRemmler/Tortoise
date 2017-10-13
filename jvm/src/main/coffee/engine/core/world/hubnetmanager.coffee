module.exports =
  class HubnetManager

      # (Boolean, Boolean, Boolean, Any, String, String) => HubnetManager
      constructor: () ->
        @hubnetMessageWaiting = false
        @hubnetEnterMessage = false
        @hubnetExitMessage = false
        @hubnetMessage = ""
        @hubnetMessageSource = ""
        @hubnetMessageTag = ""

      # Commands

      # () => Unit
      hubnetFetchMessage: =>
        processCommand(commandQueue.shift())
        return

      # (String, String, Any) => Unit
      hubnetSend: (messageSource, messageTag, message) =>
        socket.emit('send reporter', {
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      processCommand = (m) ->
        #console.log(m.messageSource+" "+m.messageTag+" "+m.message);
        if commandQueue.length == 0
          @hubnetMessageWaiting = false
        @hubnetEnterMessage = false
        @hubnetExitMessage = false
        @hubnetMessageSource = m.messageSource
        @hubnetMessageTag = m.messageTag
        @hubnetMessage = m.message
        if m.messageTag == 'hubnet-enter-message'
          @hubnetEnterMessage = true
        if m.messageTag == 'hubnet-exit-message'
          @hubnetExitMessage = true
        return
