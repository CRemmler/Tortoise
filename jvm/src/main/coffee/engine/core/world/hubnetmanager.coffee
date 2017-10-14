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
          world.hubnetManager.hubnetMessageWaiting = false
        world.hubnetManager.hubnetEnterMessage = false
        world.hubnetManager.hubnetExitMessage = false
        world.hubnetManager.hubnetMessageSource = m.messageSource
        world.hubnetManager.hubnetMessageTag = m.messageTag
        world.hubnetManager.hubnetMessage = m.message
        if m.messageTag == 'hubnet-enter-message'
          world.hubnetManager.hubnetEnterMessage = true
        if m.messageTag == 'hubnet-exit-message'
          world.hubnetManager.hubnetExitMessage = true
        return
