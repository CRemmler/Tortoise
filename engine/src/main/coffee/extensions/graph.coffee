# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    hideGraph = () ->
        Graph.hideGraph()

    # (list) => ()
    showGraph = (settings) ->
        Graph.showGraph(settings)

    # (string) => ()
    setData = (data) ->
        Graph.setData(data)

    # (string) => ()
    importGgb = (filename) ->
        Graph.importGgb(filename)

    # () => (string)
    getData = () ->
        return Graph.getData()

    # () => ()
    exportFile = () ->
        Graph.exportFile()

    # (string, list) => ()
    createPoint = (name, center) ->
        Graph.createPoint(name, center)

    # (number) => ()
    setOpacity = (opacity) ->
        Graph.setOpacity(opacity)

    # () => (number)
    getOpacity = () ->
        return Graph.getOpacity()

    # (list) => ()
    createPoints = (data) ->
        Graph.createPoints(data)

    # () => (list)
    getPoints = () ->
        return Graph.getPoints()

    # () => ()
    deletePoints = () ->
        Graph.deletePoints()

    # (string, number) => ()
    setX = (name, xcor) ->
        Graph.setX(name, xcor)

    # (string, number) => ()
    setY = (name, ycor) ->
        Graph.setY(name, ycor)

    # (string, list) => ()
    setXy = (name, center) ->
        Graph.setXy(name, center)

    # (boolean) => ()
    setDraggable = (draggable) ->
        Graph.setDraggable(draggable)

    # (string) => (number)
    getX = (name) ->
        return Graph.getX(name)

    # (string) => (number)
    getY = (name) ->
        return Graph.getY(name)

    # (string) => (list)
    getXy = (name) ->
        return Graph.getXy(name)

    # () => (list)
    getObjects = () ->
        return Graph.getObjects()

    # () => ()
    deleteObjects = () ->
        Graph.deleteObjects()

    # (list) => ()
    createObjects = (objects) ->
        Graph.createObjects(objects)

    # (string) => (list)
    getObject = (name) ->
        return Graph.getObject(name)

    # (list) => ()
    createObject = (object) ->
        Graph.createObject(object)

    # (string) => (number)
    getValue = (name) ->
        return Graph.getValue(name)

    # (string) => (string)
    getObjectType = (name) ->
        return Graph.getObjectType(name)

    # (string) => (boolean)
    exists = (name) ->
        return Graph.exists(name)

    # (string, string) => ()
    renameObject = (old, next) ->
        Graph.renameObject(old, next)

    # (string) => ()
    deleteObject = (name) ->
        Graph.deleteObject(name)

    # (string) => ()
    hideObject = (name) ->
        Graph.hideObject(name)

    # (string) => ()
    showObject = (name) ->
        Graph.showObject(name)

    # (list) => (list)
    graphToPatch = (coords) ->
        return Graph.graphToPatch(coords)

    # (list) => (list)
    patchToGraph = (coords) ->
        return Graph.patchToGraph(coords)

    # (string) => ()
    evalCommand = (command) ->
        Graph.evalCommand(command)

    # (string) => (wildcard)
    evalReporter = (command) ->
        return Graph.evalReporter(command)

    # () => (string)
    getPointsString = () ->
        return Graph.getPointsString()

    # (number,number,number,number,) => ()
    setCoordSystem = (xmin,xmax,ymin,ymax) ->
        Graph.setCoordSystem(xmin,xmax,ymin,ymax)

    # (string,boolean) => ()
    setFixed = (name,fixed) ->
        Graph.setFixed(name,fixed)

    # (string) => ()
    importWorld = (filename) ->
        Graph.importWorld(filename)

    # () => ()
    exportWorld = () ->
        Graph.exportWorld()

    {
      name: "graph"
    , prims: {
      "HIDE-GRAPH": hideGraph,
      "SHOW-GRAPH": showGraph,
      "SET-DATA": setData,
      "IMPORT-GGB": importGgb,
      "GET-DATA": getData,
      "EXPORT-FILE": exportFile,
      "CREATE-POINT": createPoint,
      "SET-OPACITY": setOpacity,
      "GET-OPACITY": getOpacity,
      "CREATE-POINTS": createPoints,
      "GET-POINTS": getPoints,
      "DELETE-POINTS": deletePoints,
      "SET-X": setX,
      "SET-Y": setY,
      "SET-XY": setXy,
      "SET-DRAGGABLE": setDraggable,
      "GET-X": getX,
      "GET-Y": getY,
      "GET-XY": getXy,
      "GET-OBJECTS": getObjects,
      "DELETE-OBJECTS": deleteObjects,
      "CREATE-OBJECTS": createObjects,
      "GET-OBJECT": getObject,
      "CREATE-OBJECT": createObject,
      "GET-VALUE": getValue,
      "GET-OBJECT-TYPE": getObjectType,
      "EXISTS": exists,
      "RENAME-OBJECT": renameObject,
      "DELETE-OBJECT": deleteObject,
      "HIDE-OBJECT": hideObject,
      "SHOW-OBJECT": showObject,
      "GRAPH-TO-PATCH": graphToPatch,
      "PATCH-TO-GRAPH": patchToGraph,
      "EVAL-COMMAND": evalCommand,
      "EVAL-REPORTER": evalReporter,
      "GET-POINTS-STRING": getPointsString,
      "SET-COORD-SYSTEM": setCoordSystem,
      "SET-FIXED": setFixed,
      "IMPORT-WORLD": importWorld,
      "EXPORT-WORLD": exportWorld
    }
    }
}