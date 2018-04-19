# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    createGraph = () ->
        Graph.createGraph()

    # () => ()
    deleteGraph = () ->
        Graph.deleteGraph()

    # () => ()
    hideGraph = () ->
        Graph.hideGraph()

    # (string) => ()
    importGraph = (data) ->
        Graph.importGraph(data)

    # () => (string)
    exportGraph = () ->
        return Graph.exportGraph()

    # (string, list) => ()
    createPoint = (name, center) ->
        Graph.createPoint(name, center)

    # (list) => ()
    createPoints = (data) ->
        Graph.createPoints(data)

    # () => (list)
    getPoints = () ->
        return Graph.getPoints()

    # () => ()
    deletePoints = () ->
        Graph.deletePoints()

    # () => (string)
    getConstructions = () ->
        return Graph.getConstructions()

    # (string) => ()
    setConstructions = (data) ->
        Graph.setConstructions(data)

    # (string) => ()
    appendConstructions = (data) ->
        Graph.appendConstructions(data)

    # (string, number) => ()
    setX = (name, xcor) ->
        Graph.setX(name, xcor)

    # (string, number) => ()
    setY = (name, ycor) ->
        Graph.setY(name, ycor)

    # (string, list) => ()
    setXy = (name, center) ->
        Graph.setXy(name, center)

    # (string, string) => ()
    setLabel = (name, label) ->
        Graph.setLabel(name, label)

    # (string) => ()
    setElements = (xml) ->
        Graph.setElements(xml)

    # (string) => (number)
    getX = (name) ->
        return Graph.getX(name)

    # (string) => (number)
    getY = (name) ->
        return Graph.getY(name)

    # (string) => (list)
    getXy = (name) ->
        return Graph.getXy(name)

    # (string) => (string)
    getLabel = (name) ->
        return Graph.getLabel(name)

    # (string) => ()
    deletePoint = (name) ->
        Graph.deletePoint(name)

    # (list) => ()
    graphToPatch = (coords) ->
        Graph.graphToPatch(coords)

    # (list) => ()
    patchToGraph = (coords) ->
        Graph.patchToGraph(coords)

    # (string) => ()
    evalCommand = (command) ->
        Graph.evalCommand(command)

    # (string) => (string)
    evalCommandCas = (command) ->
        return Graph.evalCommandCas(command)

    # (string) => (string)
    evalCommandGetLabels = (command) ->
        return Graph.evalCommandGetLabels(command)

    {
      name: "graph"
    , prims: {
      "CREATE-GRAPH": createGraph,
      "DELETE-GRAPH": deleteGraph,
      "HIDE-GRAPH": hideGraph,
      "IMPORT-GRAPH": importGraph,
      "EXPORT-GRAPH": exportGraph,
      "CREATE-POINT": createPoint,
      "CREATE-POINTS": createPoints,
      "GET-POINTS": getPoints,
      "DELETE-POINTS": deletePoints,
      "GET-CONSTRUCTIONS": getConstructions,
      "SET-CONSTRUCTIONS": setConstructions,
      "APPEND-CONSTRUCTIONS": appendConstructions,
      "SET-X": setX,
      "SET-Y": setY,
      "SET-XY": setXy,
      "SET-LABEL": setLabel,
      "SET-ELEMENTS": setElements,
      "GET-X": getX,
      "GET-Y": getY,
      "GET-XY": getXy,
      "GET-LABEL": getLabel,
      "DELETE-POINT": deletePoint,
      "GRAPH-TO-PATCH": graphToPatch,
      "PATCH-TO-GRAPH": patchToGraph,
      "EVAL-COMMAND": evalCommand,
      "EVAL-COMMAND-CAS": evalCommandCas,
      "EVAL-COMMAND-GET-LABELS": evalCommandGetLabels,
    }
    }
}
