# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (String, Number, Number, Number, Number, Number, Number, Number, Number, Number, Number) => ()
    equation = (phrase, xmin, xmax, ymin, ymax, patchesPerGridX, patchesPerGridY, xAxis, yAxis, gridsPerPatchX) ->
        if xmin > xmax || gridsPerPatchX <= 0
          return
        pointsList = []
        deltaX = gridsPerPatchX
        x = xmin
        while (x <= xmax)
          try
            y = eval(phrase.replace("x",x))
          point = []
          point[0] = x
          point[1] = y
          point[2] = Math.round(x * patchesPerGridX + yAxis)
          point[3] = Math.round(y * patchesPerGridY + xAxis)
          pointsList.push(point)
          x = x + deltaX
        return pointsList

    # (String, List) => ()
    createPoint = (name, settings) ->
        Graph.createPoint(name, settings)

    # (String, List) => ()
    updatePoint = (name, settings) ->
        Graph.updatePoint(name, settings)

    # (String) => ()
    deletePoint = (name) ->
        Graph.deletePoint(name)

    # (String, String) => (List)
    getPoint = (name, key) ->
        return Graph.getPoint(name, key)

    # () => (List)
    getPoints = () ->
        return Graph.getPoints()

    # () => (List)
    getElements = () ->
        return Graph.getElements()

    # (List) => (List)
    graphToPatch = (coords) ->
        return Graph.graphToPatch(coords)

    # (List) => (List)
    patchToGraph = (coords) ->
        return Graph.patchToGraph(coords)

    # (List) => ()
    importGraph = (settings) ->
        Graph.importGraph(settings)

    # () => (List)
    exportGraph = (settings) ->
        return Graph.exportGraph()

    # (string) => ()
    evalCommand = (cmdString) ->
        Graph.evalCommand(cmdString)

    # (string) => (string)
    evalCommandGetLabels = (cmdString) ->
        return Graph.evalCommandGetLabels(cmdString)

    # (string) => (string)
    evalCommandCAS = (cmdString) ->
        return Graph.evalCommandCAS(cmdString)

    # () => ()
    removeGraph = () ->
      Graph.removeGraph()
      return



    {
      name: "graph"
    , prims: {
        "IMPORT": importGraph,
        "EXPORT": exportGraph,
        "EQUATION": equation,
        "CREATE-POINT": createPoint,
        "UPDATE-POINT": updatePoint,
        "DELETE-POINT": deletePoint,
        "GRAPH-TO-PATCH": graphToPatch,
        "PATCH-TO-GRAPH": patchToGraph,
        "EVAL-COMMAND": evalCommand,
        "EVAL-COMMAND-GET-LABELS": evalCommandGetLabels,
        "EVAL-COMMAND-CAS": evalCommandCAS,
        "REMOVE": removeGraph,
        "GET-POINT": getPoint,
        "GET-POINTS": getPoints,
        "GET-ELEMENTS": getElements,
      }
    }
}
