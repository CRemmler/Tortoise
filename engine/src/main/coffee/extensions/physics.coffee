# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    createWorld = () ->
        Physics.createWorld()

    # () => ()
    hideWorld = () ->
        Physics.hideWorld()

    # () => ()
    deleteWorld = () ->
        Physics.deleteWorld()

    # (string) => ()
    importWorld = (data) ->
        Physics.importWorld(data)

    # () => (string)
    exportWorld = () ->
        return Physics.exportWorld()

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
    getVelocityIterations = () ->
        return Physics.getVelocityIterations()

    # (string) => ()
    createBody = (name) ->
        Physics.createBody(name)

    # (string, string) => ()
    createLine = (name, body) ->
        Physics.createLine(name, body)

    # (string, string) => ()
    createCircle = (name, body) ->
        Physics.createCircle(name, body)

    # (string, string) => ()
    createPolygon = (name, body) ->
        Physics.createPolygon(name, body)

    # (string, string) => ()
    createTarget = (name, body) ->
        Physics.createTarget(name, body)

    # (string, string) => ()
    setBodyBehavior = (name, behavior) ->
        Physics.setBodyBehavior(name, behavior)

    # (string, list) => ()
    setBodyCoords = (name, coords) ->
        Physics.setBodyCoords(name, coords)

    # (string, number) => ()
    setBodyAngle = (name, angle) ->
        Physics.setBodyAngle(name, angle)

    # (string, list) => ()
    setBodyLinearVelocity = (name, coords) ->
        Physics.setBodyLinearVelocity(name, coords)

    # (string, number) => ()
    setBodyAngularVelocity = (name, velocity) ->
        Physics.setBodyAngularVelocity(name, velocity)

    # (string, string) => ()
    setLineBodyId = (name, body) ->
        Physics.setLineBodyId(name, body)

    # (string, list, list) => ()
    setLineRelativeEndpoints = (name, point1, point2) ->
        Physics.setLineRelativeEndpoints(name, point1, point2)

    # (string, list, list) => ()
    setLineEndpoints = (name, point1, point2) ->
        Physics.setLineEndpoints(name, point1, point2)

    # (string, number) => ()
    setLineFriction = (name, friction) ->
        Physics.setLineFriction(name, friction)

    # (string, number) => ()
    setLineDensity = (name, density) ->
        Physics.setLineDensity(name, density)

    # (string, number) => ()
    setLineRestitution = (name, restitution) ->
        Physics.setLineRestitution(name, restitution)

    # (string, string) => ()
    setCircleBodyId = (name, body) ->
        Physics.setCircleBodyId(name, body)

    # (string, number) => ()
    setCircleRadius = (name, radius) ->
        Physics.setCircleRadius(name, radius)

    # (string, list) => ()
    setCircleRelativeCenter = (name, center) ->
        Physics.setCircleRelativeCenter(name, center)

    # (string, list) => ()
    setCircleCenter = (name, center) ->
        Physics.setCircleCenter(name, center)

    # (string, number) => ()
    setCircleFriction = (name, friction) ->
        Physics.setCircleFriction(name, friction)

    # (string, number) => ()
    setCircleDensity = (name, density) ->
        Physics.setCircleDensity(name, density)

    # (string, number) => ()
    setCircleRestitution = (name, restitution) ->
        Physics.setCircleRestitution(name, restitution)

    # (string, string) => ()
    setPolygonBodyId = (name, body) ->
        Physics.setPolygonBodyId(name, body)

    # (string, list) => ()
    setPolygonRelativeVertices = (name, vertices) ->
        Physics.setPolygonRelativeVertices(name, vertices)

    # (string, list) => ()
    setPolygonVertices = (name, vertices) ->
        Physics.setPolygonVertices(name, vertices)

    # (string, number) => ()
    setPolygonFriction = (name, friction) ->
        Physics.setPolygonFriction(name, friction)

    # (string, number) => ()
    setPolygonDensity = (name, density) ->
        Physics.setPolygonDensity(name, density)

    # (string, number) => ()
    setPolygonRestitution = (name, restitution) ->
        Physics.setPolygonRestitution(name, restitution)

    # (string, string) => ()
    setTargetBodyId = (name, body) ->
        Physics.setTargetBodyId(name, body)

    # (string, list) => ()
    setTargetRelativeCenter = (name, center) ->
        Physics.setTargetRelativeCenter(name, center)

    # (string, list) => ()
    setTargetCenter = (name, center) ->
        Physics.setTargetCenter(name, center)

    # (string) => (string)
    getBodyBehavior = (name) ->
        return Physics.getBodyBehavior(name)

    # (string) => (list)
    getBodyCoords = (name) ->
        return Physics.getBodyCoords(name)

    # (string) => (number)
    getBodyAngle = (name) ->
        return Physics.getBodyAngle(name)

    # (string) => (list)
    getBodyLinearVelocity = (name) ->
        return Physics.getBodyLinearVelocity(name)

    # (string) => (number)
    getBodyAngularVelocity = (name) ->
        return Physics.getBodyAngularVelocity(name)

    # (string) => (string)
    getLineBodyId = (name) ->
        return Physics.getLineBodyId(name)

    # (string) => (list)
    getLineRelativeEndpoints = (name) ->
        return Physics.getLineRelativeEndpoints(name)

    # (string) => (list)
    getLineEndpoints = (name) ->
        return Physics.getLineEndpoints(name)

    # (string) => (number)
    getLineFriction = (name) ->
        return Physics.getLineFriction(name)

    # (string) => (number)
    getLineDensity = (name) ->
        return Physics.getLineDensity(name)

    # (string) => (number)
    getLineRestitution = (name) ->
        return Physics.getLineRestitution(name)

    # (string) => (string)
    getCircleBodyId = (name) ->
        return Physics.getCircleBodyId(name)

    # (string) => (number)
    getCircleRadius = (name) ->
        return Physics.getCircleRadius(name)

    # (string) => (list)
    getCircleRelativeCenter = (name) ->
        return Physics.getCircleRelativeCenter(name)

    # (string) => (list)
    getCircleCenter = (name) ->
        return Physics.getCircleCenter(name)

    # (string) => (number)
    getCircleFriction = (name) ->
        return Physics.getCircleFriction(name)

    # (string) => (number)
    getCircleDensity = (name) ->
        return Physics.getCircleDensity(name)

    # (string) => (number)
    getCircleRestitution = (name) ->
        return Physics.getCircleRestitution(name)

    # (string) => (string)
    getPolygonId = (name) ->
        return Physics.getPolygonId(name)

    # (string) => (list)
    getPolygonRelativeVertices = (name) ->
        return Physics.getPolygonRelativeVertices(name)

    # (string) => (list)
    getPolygonVertices = (name) ->
        return Physics.getPolygonVertices(name)

    # (string) => (number)
    getPolygonFriction = (name) ->
        return Physics.getPolygonFriction(name)

    # (string) => (number)
    getPolygonDensity = (name) ->
        return Physics.getPolygonDensity(name)

    # (string) => (number)
    getPolygonRestitution = (name) ->
        return Physics.getPolygonRestitution(name)

    # (string) => (string)
    getTargetBodyId = (name) ->
        return Physics.getTargetBodyId(name)

    # (string) => (list)
    getTargetRelativeCenter = (name) ->
        return Physics.getTargetRelativeCenter(name)

    # (string) => (list)
    getTargetCenter = (name) ->
        return Physics.getTargetCenter(name)

    # (string) => ()
    deleteBody = (name) ->
        Physics.deleteBody(name)

    # (string) => ()
    deleteLine = (name) ->
        Physics.deleteLine(name)

    # (string) => ()
    deleteCircle = (name) ->
        Physics.deleteCircle(name)

    # (string) => ()
    deletePolygon = (name) ->
        Physics.deletePolygon(name)

    # (string) => ()
    deleteTarget = (name) ->
        Physics.deleteTarget(name)

    # (string, number, number) => ()
    applyForce = (name, force, angle) ->
        Physics.applyForce(name, force, angle)

    # (string, number, number) => ()
    applyForceRelativeAngle = (name, force, angle) ->
        Physics.applyForceRelativeAngle(name, force, angle)

    # (string, number, number) => ()
    applyLinearImpulse = (name, force, angle) ->
        Physics.applyLinearImpulse(name, force, angle)

    # (string, number, nummber) => ()
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

    {
      name: "physics"
    , prims: {
      "CREATE-WORLD": createWorld,
      "HIDE-WORLD": hideWorld,
      "DELETE-WORLD": deleteWorld,
      "IMPORT-WORLD": importWorld,
      "EXPORT-WORLD": exportWorld,
      "SET-GRAVITY-XY": setGravityXy,
      "GET-GRAVITY-XY": getGravityXy,
      "SET-WRAP-XY": setWrapXy,
      "GET-WRAP-XY": getWrapXy,
      "SET-TIME-STEP": setTimeStep,
      "GET-TIME-STEP": getTimeStep,
      "SET-VELOCITY-ITERATIONS": setVelocityIterations,
      "GET-VELOCITY-ITERATIONS": getVelocityIterations,
      "SET-POSITION-ITERATIONS": setPositionIterations,
      "GET-VELOCITY-ITERATIONS": getVelocityIterations,
      "CREATE-BODY": createBody,
      "CREATE-LINE": createLine,
      "CREATE-CIRCLE": createCircle,
      "CREATE-POLYGON": createPolygon,
      "CREATE-TARGET": createTarget,
      "SET-BODY-BEHAVIOR": setBodyBehavior,
      "SET-BODY-COORDS": setBodyCoords,
      "SET-BODY-ANGLE": setBodyAngle,
      "SET-BODY-LINEAR-VELOCITY": setBodyLinearVelocity,
      "SET-BODY-ANGULAR-VELOCITY": setBodyAngularVelocity,
      "SET-LINE-BODY-ID": setLineBodyId,
      "SET-LINE-RELATIVE-ENDPOINTS": setLineRelativeEndpoints,
      "SET-LINE-ENDPOINTS": setLineEndpoints,
      "SET-LINE-FRICTION": setLineFriction,
      "SET-LINE-DENSITY": setLineDensity,
      "SET-LINE-RESTITUTION": setLineRestitution,
      "SET-CIRCLE-BODY-ID": setCircleBodyId,
      "SET-CIRCLE-RADIUS": setCircleRadius,
      "SET-CIRCLE-RELATIVE-CENTER": setCircleRelativeCenter,
      "SET-CIRCLE-CENTER": setCircleCenter,
      "SET-CIRCLE-FRICTION": setCircleFriction,
      "SET-CIRCLE-DENSITY": setCircleDensity,
      "SET-CIRCLE-RESTITUTION": setCircleRestitution,
      "SET-POLYGON-BODY-ID": setPolygonBodyId,
      "SET-POLYGON-RELATIVE-VERTICES": setPolygonRelativeVertices,
      "SET-POLYGON-VERTICES": setPolygonVertices,
      "SET-POLYGON-FRICTION": setPolygonFriction,
      "SET-POLYGON-DENSITY": setPolygonDensity,
      "SET-POLYGON-RESTITUTION": setPolygonRestitution,
      "SET-TARGET-BODY-ID": setTargetBodyId,
      "SET-TARGET-RELATIVE-CENTER": setTargetRelativeCenter,
      "SET-TARGET-CENTER": setTargetCenter,
      "GET-BODY-BEHAVIOR": getBodyBehavior,
      "GET-BODY-COORDS": getBodyCoords,
      "GET-BODY-ANGLE": getBodyAngle,
      "GET-BODY-LINEAR-VELOCITY": getBodyLinearVelocity,
      "GET-BODY-ANGULAR-VELOCITY": getBodyAngularVelocity,
      "GET-LINE-BODY-ID": getLineBodyId,
      "GET-LINE-RELATIVE-ENDPOINTS": getLineRelativeEndpoints,
      "GET-LINE-ENDPOINTS": getLineEndpoints,
      "GET-LINE-FRICTION": getLineFriction,
      "GET-LINE-DENSITY": getLineDensity,
      "GET-LINE-RESTITUTION": getLineRestitution,
      "GET-CIRCLE-BODY-ID": getCircleBodyId,
      "GET-CIRCLE-RADIUS": getCircleRadius,
      "GET-CIRCLE-RELATIVE-CENTER": getCircleRelativeCenter,
      "GET-CIRCLE-CENTER": getCircleCenter,
      "GET-CIRCLE-FRICTION": getCircleFriction,
      "GET-CIRCLE-DENSITY": getCircleDensity,
      "GET-CIRCLE-RESTITUTION": getCircleRestitution,
      "GET-POLYGON-ID": getPolygonId,
      "GET-POLYGON-RELATIVE-VERTICES": getPolygonRelativeVertices,
      "GET-POLYGON-VERTICES": getPolygonVertices,
      "GET-POLYGON-FRICTION": getPolygonFriction,
      "GET-POLYGON-DENSITY": getPolygonDensity,
      "GET-POLYGON-RESTITUTION": getPolygonRestitution,
      "GET-TARGET-BODY-ID": getTargetBodyId,
      "GET-TARGET-RELATIVE-CENTER": getTargetRelativeCenter,
      "GET-TARGET-CENTER": getTargetCenter,
      "DELETE-BODY": deleteBody,
      "DELETE-LINE": deleteLine,
      "DELETE-CIRCLE": deleteCircle,
      "DELETE-POLYGON": deletePolygon,
      "DELETE-TARGET": deleteTarget,
      "APPLY-FORCE": applyForce,
      "APPLY-FORCE-RELATIVE-ANGLE": applyForceRelativeAngle,
      "APPLY-LINEAR-IMPULSE": applyLinearImpulse,
      "APPLY-LINEAR-IMPULSE-RELATIVE-ANGLE": applyLinearImpulseRelativeAngle,
      "APPLY-TORQUE": applyTorque,
      "APPLY-ANGULAR-IMPULSE": applyAngularImpulse,
      "CONNECT-WHO-TO-OBJECT": connectWhoToObject,
      "DISCONNECT-WHO": disconnectWho,
    }
    }
}
