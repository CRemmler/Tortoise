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
          hubnetAgentOrSet: this.getAgents(agentOrSet),
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
          hubnetAgentOrSet: this.getAgents(agent),
          hubnetMessageSource: messageSource })
        return

      # (String) => ()
      hubnetResetPerspective: (messageSource) =>
        socket.emit('send override', {
          hubnetMessageType: "reset-perspective",
          hubnetMessageSource: messageSource })
        return

      # (String, Agent, Number) => ()
      hubnetSendFollow: (messageSource, agent, radius) =>
        socket.emit('send override', {
          hubnetMessageType: "send-follow",
          hubnetAgentOrSet: this.getAgent(agent),
          hubnetMessageSource: messageSource,
          hubnetMessage: radius })
        return

      # (String, TurtleSet, String) => ()
      hubnetSendOverride: (messageSource, agentOrSet, messageTag, message) =>
        console.log(message)
        socket.emit('send override', {
          hubnetMessageType: "send-override",
          hubnetAgentOrSet: this.getAgents(agentOrSet),
          hubnetMessageSource: messageSource,
          hubnetMessageTag: messageTag,
          hubnetMessage: message })
        return

      getAgents: (agents) ->
        ids = []
        agentType = agents.constructor.name
        if (agentType is "Turtle" or agentType is "Patch" or agentType is "Link")
          ids.push(agents.id)
        else
          agentObj = agents._agentArr
          for a in agentObj
            ids.push(a.id)
        if (agentType.indexOf("Turtle") > -1)
          agentType = "turtles"
        if (agentType.indexOf("Patch") > -1)
          agentType = "patches"
        if (agentType.indexOf("Link") > -1)
          agentType = "links"
        return {
          agentType: agentType,
          ids: ids }

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
