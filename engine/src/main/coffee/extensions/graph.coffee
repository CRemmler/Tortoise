# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    hideGraph = () ->
        Graph.hideGraph()

    # () => ()
    showGraph = () ->
        Graph.showGraph()

    # (string) => ()
    setData = (data) ->
        Graph.setData(data)

    # (string) => ()
    importGgbFile = (filename) ->
        Graph.importGgbFile(filename)

    # () => (string)
    getData = () ->
        return Graph.getData()

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

    # (string) => ()
    deletePoint = (name) ->
        Graph.deletePoint(name)

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

    # (string, boolean) => ()
    setDraggable = (name, draggable) ->
        Graph.setDraggable(name, draggable)

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
    objectExists = (name) ->
        return Graph.objectExists(name)

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

    # () => ()
    updateGraph = () ->
        Graph.updateGraph()

    # (string) => ()
    showObjectLabel = (name) ->
        Graph.showObjectLabel(name)

    # (string) => ()
    hideObjectLabel = (name) ->
        Graph.hideObjectLabel(name)

    # () => ()
    showToolbar = () ->
        Graph.showToolbar()

    # () => ()
    hideToolbar = () ->
        Graph.hideToolbar()

    # () => ()
    bringToFront = () ->
        Graph.bringToFront()

    # () => ()
    sendToBack = () ->
        Graph.sendToBack()

    # (string) => ()
    setAll = (data) ->
        Graph.setAll(data)

    # () => (string)
    getAll = () ->
        return Graph.getAll()

    # () => (list)
    getGraphOffset = () ->
        return Graph.getGraphOffset()

    # (list) => ()
    setGraphOffset = (offset) ->
        Graph.setGraphOffset(offset)

    # (string) => (list)
    getPoint = (name) ->
        return Graph.getPoint(name)

    # (list) => ()
    centerView = (center) ->
        Graph.centerView(center)

    # (string) => ()
    exportGgb = (filename) ->
        Graph.exportGgb(filename)

    # (string) => (boolean)
    getDraggable = (name) ->
        return Graph.getDraggable(name)

    # () => ()
    mouseOn = () ->
        Graph.mouseOn()

    # () => ()
    mouseOff = () ->
        Graph.mouseOff()

    # (string) => (string)
    getCommandString = (name) ->
        return Graph.getCommandString(name)

    # () => (list)
    getGgbList = () ->
        return Graph.getGgbList()

    # (string) => (string)
    getValueString = (name) ->
        return Graph.getValueString(name)

    # () => ()
    importGgb = () ->
        Graph.importGgb()

    {
      name: "graph"
    , prims: {
      "HIDE-GRAPH": hideGraph,
      "SHOW-GRAPH": showGraph,
      "SET-DATA": setData,
      "IMPORT-GGB-FILE": importGgbFile,
      "GET-DATA": getData,
      "CREATE-POINT": createPoint,
      "SET-OPACITY": setOpacity,
      "GET-OPACITY": getOpacity,
      "CREATE-POINTS": createPoints,
      "GET-POINTS": getPoints,
      "DELETE-POINT": deletePoint,
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
      "OBJECT-EXISTS": objectExists,
      "RENAME-OBJECT": renameObject,
      "DELETE-OBJECT": deleteObject,
      "HIDE-OBJECT": hideObject,
      "SHOW-OBJECT": showObject,
      "GRAPH-TO-PATCH": graphToPatch,
      "PATCH-TO-GRAPH": patchToGraph,
      "EVAL-COMMAND": evalCommand,
      "EVAL-REPORTER": evalReporter,
      "GET-POINTS-STRING": getPointsString,
      "UPDATE-GRAPH": updateGraph,
      "SHOW-OBJECT-LABEL": showObjectLabel,
      "HIDE-OBJECT-LABEL": hideObjectLabel,
      "SHOW-TOOLBAR": showToolbar,
      "HIDE-TOOLBAR": hideToolbar,
      "BRING-TO-FRONT": bringToFront,
      "SEND-TO-BACK": sendToBack,
      "SET-ALL": setAll,
      "GET-ALL": getAll,
      "GET-GRAPH-OFFSET": getGraphOffset,
      "SET-GRAPH-OFFSET": setGraphOffset,
      "GET-POINT": getPoint,
      "CENTER-VIEW": centerView,
      "EXPORT-GGB": exportGgb,
      "GET-DRAGGABLE": getDraggable,
      "MOUSE-ON": mouseOn,
      "MOUSE-OFF": mouseOff,
      "GET-COMMAND-STRING": getCommandString,
      "GET-GGB-LIST": getGgbList,
      "GET-VALUE-STRING": getValueString,
      "IMPORT-GGB": importGgb
    }
    }
}
