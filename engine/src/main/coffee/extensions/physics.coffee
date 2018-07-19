# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    hideWorld = () ->
        Physics.hideWorld()

    # () => ()
    showWorld = () ->
        Physics.showWorld()

    # (list) => ()
    setGravityXy = (data) ->
        Physics.setGravityXy(data)

    # () => (list)
    getGravityXy = () ->
        return Physics.getGravityXy()

    # (list) => ()
    setWrapXy = (data) ->
        Physics.setWrapXy(data)

    # () => (list)
    getWrapXy = () ->
        return Physics.getWrapXy()

    # (number) => ()
    setTimeStep = (time) ->
        Physics.setTimeStep(time)

    # () => (number)
    getTimeStep = () ->
        return Physics.getTimeStep()

    # (number) => ()
    setVelocityIterations = (iterations) ->
        Physics.setVelocityIterations(iterations)

    # () => (number)
    getVelocityIterations = () ->
        return Physics.getVelocityIterations()

    # (number) => ()
    setPositionIterations = (iterations) ->
        Physics.setPositionIterations(iterations)

    # () => (number)
    getPositionIterations = () ->
        return Physics.getPositionIterations()

    # (string) => ()
    createBody = (name) ->
        Physics.createBody(name)

    # (string, string) => ()
    setBehavior = (name, behavior) ->
        Physics.setBehavior(name, behavior)

    # (string, list) => ()
    setBodyXy = (name, coords) ->
        Physics.setBodyXy(name, coords)

    # (string, number) => ()
    setAngle = (name, angle) ->
        Physics.setAngle(name, angle)

    # (string, list) => ()
    setLinearVelocity = (name, coords) ->
        Physics.setLinearVelocity(name, coords)

    # (string, number) => ()
    setAngularVelocity = (name, velocity) ->
        Physics.setAngularVelocity(name, velocity)

    # (string) => (string)
    getBehavior = (name) ->
        return Physics.getBehavior(name)

    # (string) => (list)
    getBodyXy = (name) ->
        return Physics.getBodyXy(name)

    # (string) => (number)
    getAngle = (name) ->
        return Physics.getAngle(name)

    # (string) => (list)
    getLinearVelocity = (name) ->
        return Physics.getLinearVelocity(name)

    # (string) => (number)
    getAngularVelocity = (name) ->
        return Physics.getAngularVelocity(name)

    # (string, number) => ()
    setFriction = (name, friction) ->
        Physics.setFriction(name, friction)

    # (string, number) => ()
    setDensity = (name, density) ->
        Physics.setDensity(name, density)

    # (string, number) => ()
    setRestitution = (name, restitution) ->
        Physics.setRestitution(name, restitution)

    # (string) => (number)
    getFriction = (name) ->
        return Physics.getFriction(name)

    # (string) => (number)
    getDensity = (name) ->
        return Physics.getDensity(name)

    # (string) => (number)
    getRestitution = (name) ->
        return Physics.getRestitution(name)

    # (string, string) => ()
    createLine = (name, body) ->
        Physics.createLine(name, body)

    # (string, list) => ()
    setLineRelativeEndpoints = (name, endpoints) ->
        Physics.setLineRelativeEndpoints(name, endpoints)

    # (string, list) => ()
    setLineEndpoints = (name, endpoints) ->
        Physics.setLineEndpoints(name, endpoints)

    # (string) => (list)
    getLineRelativeEndpoints = (name) ->
        return Physics.getLineRelativeEndpoints(name)

    # (string) => (list)
    getLineEndpoints = (name) ->
        return Physics.getLineEndpoints(name)

    # (string, string) => ()
    createCircle = (name, body) ->
        Physics.createCircle(name, body)

    # (string, number) => ()
    setCircleRadius = (name, radius) ->
        Physics.setCircleRadius(name, radius)

    # (string, list) => ()
    setCircleRelativeCenter = (name, center) ->
        Physics.setCircleRelativeCenter(name, center)

    # (string, list) => ()
    setCircleCenter = (name, center) ->
        Physics.setCircleCenter(name, center)

    # (string) => (number)
    getCircleRadius = (name) ->
        return Physics.getCircleRadius(name)

    # (string) => (list)
    getCircleRelativeCenter = (name) ->
        return Physics.getCircleRelativeCenter(name)

    # (string) => (list)
    getCircleCenter = (name) ->
        return Physics.getCircleCenter(name)

    # (string, string) => ()
    createPolygon = (name, body) ->
        Physics.createPolygon(name, body)

    # (string, list) => ()
    setPolygonRelativeVertices = (name, vertices) ->
        Physics.setPolygonRelativeVertices(name, vertices)

    # (string, list) => ()
    setPolygonVertices = (name, vertices) ->
        Physics.setPolygonVertices(name, vertices)

    # (string) => (list)
    getPolygonRelativeVertices = (name) ->
        return Physics.getPolygonRelativeVertices(name)

    # (string) => (list)
    getPolygonVertices = (name) ->
        return Physics.getPolygonVertices(name)

    # (string, string) => ()
    createTarget = (name, body) ->
        Physics.createTarget(name, body)

    # (string, list) => ()
    setTargetRelativeXy = (name, center) ->
        Physics.setTargetRelativeXy(name, center)

    # (string, list) => ()
    setTargetXy = (name, center) ->
        Physics.setTargetXy(name, center)

    # (string) => (list)
    getTargetRelativeXy = (name) ->
        return Physics.getTargetRelativeXy(name)

    # (string) => (list)
    getTargetXy = (name) ->
        return Physics.getTargetXy(name)

    # (string, string) => ()
    setBodyId = (name, body) ->
        Physics.setBodyId(name, body)

    # (string) => (string)
    getBodyId = (name) ->
        return Physics.getBodyId(name)

    # (list) => ()
    createObjects = (data) ->
        Physics.createObjects(data)

    # (string) => ()
    createObject = (data) ->
        Physics.createObject(data)

    # () => (list)
    getObjects = () ->
        return Physics.getObjects()

    # (string) => (list)
    getObject = (name) ->
        return Physics.getObject(name)

    # (string) => (string)
    getObjectType = (name) ->
        return Physics.getObjectType(name)

    # (string) => ()
    deleteObject = (name) ->
        Physics.deleteObject(name)

    # () => ()
    deleteTargets = () ->
        Physics.deleteTargets()

    # () => ()
    deleteObjects = () ->
        Physics.deleteObjects()

    # (string, number, number) => ()
    applyForce = (name, force, angle) ->
        Physics.applyForce(name, force, angle)

    # (string, number, number) => ()
    applyForceRelativeAngle = (name, force, angle) ->
        Physics.applyForceRelativeAngle(name, force, angle)

    # (string, number, number) => ()
    applyLinearImpulse = (name, force, angle) ->
        Physics.applyLinearImpulse(name, force, angle)

    # (string, number, number) => ()
    applyLinearImpulseRelativeAngle = (name, force, angle) ->
        Physics.applyLinearImpulseRelativeAngle(name, force, angle)

    # (string, number) => ()
    applyTorque = (name, force) ->
        Physics.applyTorque(name, force)

    # (string, number) => ()
    applyAngularImpulse = (name, force) ->
        Physics.applyAngularImpulse(name, force)

    # (number, string) => ()
    connectWhoToObject = (who, name) ->
        Physics.connectWhoToObject(who, name)

    # (number) => ()
    disconnectWho = (who) ->
        Physics.disconnectWho(who)

    # () => ()
    worldOn = () ->
        Physics.worldOn()

    # () => ()
    worldOff = () ->
        Physics.worldOff()

    # (string) => (boolean)
    objectExists = (name) ->
        return Physics.objectExists(name)

    # () => (list)
    getConnected = () ->
        return Physics.getConnected()

    # () => ()
    resetTicks = () ->
        Physics.resetTicks()

    # () => ()
    tick = () ->
        Physics.tick()

    # () => (list)
    getTick = () ->
        return Physics.getTick()

    # () => ()
    repaint = () ->
        Physics.repaint()

    # (string, string) => ()
    createRectangle = (name, body) ->
        Physics.createRectangle(name, body)

    # (string, list) => ()
    setRectangleRelativeCorners = (name, vertices) ->
        Physics.setRectangleRelativeCorners(name, vertices)

    # (string, list) => ()
    setRectangleCorners = (name, vertices) ->
        Physics.setRectangleCorners(name, vertices)

    # (string) => (list)
    getRectangleRelativeCorners = (name) ->
        return Physics.getRectangleRelativeCorners(name)

    # (string) => (list)
    getRectangleCorners = (name) ->
        return Physics.getRectangleCorners(name)

    # (string) => ()
    showObject = (name) ->
        Physics.showObject(name)

    # (string) => ()
    hideObject = (name) ->
        Physics.hideObject(name)

    # () => ()
    showObjects = () ->
        Physics.showObjects()

    # () => ()
    hideObjects = () ->
        Physics.hideObjects()

    # (string) => ()
    exportWorld = (filename) ->
        Physics.exportWorld(filename)

    # (string) => ()
    importWorld = (filename) ->
        Physics.importWorld(filename)

    # (string, list) => ()
    setRectanglePatch = (name, coords) ->
        Physics.setRectanglePatch(name, coords)

    # (string) => (patch)
    getRectanglePatch = (name) ->
        return Physics.getRectanglePatch(name)

    # () => (list)
    getWorldOffset = () ->
        return Physics.getWorldOffset()

    # (list) => ()
    setWorldOffset = (offset) ->
        Physics.setWorldOffset(offset)

    # (string) => ()
    setAll = (data) ->
        Physics.setAll(data)

    # () => (string)
    getAll = () ->
        return Physics.getAll()

    # () => ()
    showToolbar = () ->
        Physics.showToolbar()

    # () => ()
    hideToolbar = () ->
        Physics.hideToolbar()

    {
      name: "physics"
    , prims: {
      "HIDE-WORLD": hideWorld,
      "SHOW-WORLD": showWorld,
      "SET-GRAVITY-XY": setGravityXy,
      "GET-GRAVITY-XY": getGravityXy,
      "SET-WRAP-XY": setWrapXy,
      "GET-WRAP-XY": getWrapXy,
      "SET-TIME-STEP": setTimeStep,
      "GET-TIME-STEP": getTimeStep,
      "SET-VELOCITY-ITERATIONS": setVelocityIterations,
      "GET-VELOCITY-ITERATIONS": getVelocityIterations,
      "SET-POSITION-ITERATIONS": setPositionIterations,
      "GET-POSITION-ITERATIONS": getPositionIterations,
      "CREATE-BODY": createBody,
      "SET-BEHAVIOR": setBehavior,
      "SET-BODY-XY": setBodyXy,
      "SET-ANGLE": setAngle,
      "SET-LINEAR-VELOCITY": setLinearVelocity,
      "SET-ANGULAR-VELOCITY": setAngularVelocity,
      "GET-BEHAVIOR": getBehavior,
      "GET-BODY-XY": getBodyXy,
      "GET-ANGLE": getAngle,
      "GET-LINEAR-VELOCITY": getLinearVelocity,
      "GET-ANGULAR-VELOCITY": getAngularVelocity,
      "SET-FRICTION": setFriction,
      "SET-DENSITY": setDensity,
      "SET-RESTITUTION": setRestitution,
      "GET-FRICTION": getFriction,
      "GET-DENSITY": getDensity,
      "GET-RESTITUTION": getRestitution,
      "CREATE-LINE": createLine,
      "SET-LINE-RELATIVE-ENDPOINTS": setLineRelativeEndpoints,
      "SET-LINE-ENDPOINTS": setLineEndpoints,
      "GET-LINE-RELATIVE-ENDPOINTS": getLineRelativeEndpoints,
      "GET-LINE-ENDPOINTS": getLineEndpoints,
      "CREATE-CIRCLE": createCircle,
      "SET-CIRCLE-RADIUS": setCircleRadius,
      "SET-CIRCLE-RELATIVE-CENTER": setCircleRelativeCenter,
      "SET-CIRCLE-CENTER": setCircleCenter,
      "GET-CIRCLE-RADIUS": getCircleRadius,
      "GET-CIRCLE-RELATIVE-CENTER": getCircleRelativeCenter,
      "GET-CIRCLE-CENTER": getCircleCenter,
      "CREATE-POLYGON": createPolygon,
      "SET-POLYGON-RELATIVE-VERTICES": setPolygonRelativeVertices,
      "SET-POLYGON-VERTICES": setPolygonVertices,
      "GET-POLYGON-RELATIVE-VERTICES": getPolygonRelativeVertices,
      "GET-POLYGON-VERTICES": getPolygonVertices,
      "CREATE-TARGET": createTarget,
      "SET-TARGET-RELATIVE-XY": setTargetRelativeXy,
      "SET-TARGET-XY": setTargetXy,
      "GET-TARGET-RELATIVE-XY": getTargetRelativeXy,
      "GET-TARGET-XY": getTargetXy,
      "SET-BODY-ID": setBodyId,
      "GET-BODY-ID": getBodyId,
      "CREATE-OBJECTS": createObjects,
      "CREATE-OBJECT": createObject,
      "GET-OBJECTS": getObjects,
      "GET-OBJECT": getObject,
      "GET-OBJECT-TYPE": getObjectType,
      "DELETE-OBJECT": deleteObject,
      "DELETE-TARGETS": deleteTargets,
      "DELETE-OBJECTS": deleteObjects,
      "APPLY-FORCE": applyForce,
      "APPLY-FORCE-RELATIVE-ANGLE": applyForceRelativeAngle,
      "APPLY-LINEAR-IMPULSE": applyLinearImpulse,
      "APPLY-LINEAR-IMPULSE-RELATIVE-ANGLE": applyLinearImpulseRelativeAngle,
      "APPLY-TORQUE": applyTorque,
      "APPLY-ANGULAR-IMPULSE": applyAngularImpulse,
      "CONNECT-WHO-TO-OBJECT": connectWhoToObject,
      "DISCONNECT-WHO": disconnectWho,
      "WORLD-ON": worldOn,
      "WORLD-OFF": worldOff,
      "OBJECT-EXISTS": objectExists,
      "GET-CONNECTED": getConnected,
      "RESET-TICKS": resetTicks,
      "TICK": tick,
      "GET-TICK": getTick,
      "REPAINT": repaint,
      "CREATE-RECTANGLE": createRectangle,
      "SET-RECTANGLE-RELATIVE-CORNERS": setRectangleRelativeCorners,
      "SET-RECTANGLE-CORNERS": setRectangleCorners,
      "GET-RECTANGLE-RELATIVE-CORNERS": getRectangleRelativeCorners,
      "GET-RECTANGLE-CORNERS": getRectangleCorners,
      "SHOW-OBJECT": showObject,
      "HIDE-OBJECT": hideObject,
      "SHOW-OBJECTS": showObjects,
      "HIDE-OBJECTS": hideObjects,
      "EXPORT-WORLD": exportWorld,
      "IMPORT-WORLD": importWorld,
      "SET-RECTANGLE-PATCH": setRectanglePatch,
      "GET-RECTANGLE-PATCH": getRectanglePatch,
      "GET-WORLD-OFFSET": getWorldOffset,
      "SET-WORLD-OFFSET": setWorldOffset,
      "SET-ALL": setAll,
      "GET-ALL": getAll,
      "SHOW-TOOLBAR": showToolbar,
      "HIDE-TOOLBAR": hideToolbar,
    }
    }
}
