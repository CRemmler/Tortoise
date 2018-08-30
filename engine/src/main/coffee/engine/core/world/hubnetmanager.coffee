TurtleSet  = require('../turtleset')

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
        this.processCommand(commandQueue.shift())
        return

      # (String, String, Any) => Unit
      hubnetSend: (messageSource, messageTag, message) =>
        socket.emit('send reporter', {
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      # (String, Any) => Unit
      hubnetBroadcast: (messageTag, message) =>
        socket.emit('send reporter', {
          hubnetMessageSource: "all-users",
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      # (String, TurtleSet, String) => ()
      hubnetClearOverride: (messageSource, agentOrSet, messageTag) =>
        socket.emit('send override', {
          hubnetMessageType: "clear-override",
          hubnetAgentOrSet: this.getAgentIds(agentOrSet),
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag })
        return

      # (String) => ()
      hubnetClearOverrides: (messageSource) =>
        socket.emit('send override', {
          hubnetMessageType: "clear-overrides",
          hubnetMessageSource: messageSource })
        return

      # (String, Number) => ()
      hubnetSendWatch: (messageSource, agent) =>
        socket.emit('send override', {
          hubnetMessageType: "send-watch",
          hubnetAgentOrSet: this.getAgentIds(agent),
          hubnetMessageSource: messageSource })
        return

      # (String) => ()
      hubnetResetPerspective: (messageTag) =>
        socket.emit('send override', {
          hubnetMessageType: "reset-perspective",
          hubnetMessageTag: messageTag })
        return

      # (String, Agent, Number) => ()
      hubnetSendFollow: (messageSource, agent, radius) =>
        socket.emit('send override', {
          hubnetMessageType: "send-follow",
          hubnetAgentOrSet: this.getAgentIds(agent),
          hubnetMessageSource: messageSource,
          hubnetMessage: radius })
        return

      # (String, Agent, Radius) => ()
      # hubnetSendFollow: (clientName, agent, radius) =>
      #   return

      # (String, TurtleSet, String, List ) =>
      hubnetSendOverride: (messageSource, agentOrSet, messageTag, message) =>
        socket.emit('send override', {
          hubnetMessageType: "send-override",
          hubnetAgentOrSet: this.getAgentIds(agentOrSet),
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      # (string, agent, string) => ()
      # hubnetSendOverride: (clientName, agentOrSet, variableName) =>
      #   return

      getAgentIds: (agents) ->
        ids = []
        agentType = agents.constructor.name
        if (agentType is "Turtle")
          ids.push(agents.id)
        else
          if (agentType is "TurtleSet")
            agentObj = agents._agents
            for a in agentObj
              ids.push(a.id)
        return ids

      processCommand: (m) ->
        #console.log(m.messageSource+" "+m.messageTag+" "+m.message);
        if commandQueue.length is 0
          world.hubnetManager.hubnetMessageWaiting = false
        world.hubnetManager.hubnetEnterMessage = false
        world.hubnetManager.hubnetExitMessage = false
        world.hubnetManager.hubnetMessageSource = m.messageSource
        world.hubnetManager.hubnetMessageTag = m.messageTag
        world.hubnetManager.hubnetMessage = m.message
        if m.messageTag is 'hubnet-enter-message'
          world.hubnetManager.hubnetEnterMessage = true
        if m.messageTag is 'hubnet-exit-message'
          world.hubnetManager.hubnetExitMessage = true
        return
