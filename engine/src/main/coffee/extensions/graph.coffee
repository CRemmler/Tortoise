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
    removePoint = (name) ->
        Graph.removePoint(name)

    # (String) => List
    getPoint = (name) ->
        return Graph.getPoint(name)

    # (List) => ()
    importGraph = (settings) ->
        Graph.importGraph(settings)

    # (string) => ()
    evalCommand = (cmdString) ->
        Graph.evalCommand(cmdString)

    # (string) => (string)
    evalCommandGetLabels = (cmdString) ->
        return Graph.evalCommandGetLabels(cmdString)

    # (string) => (string)
    evalCommandCAS = (cmdString) ->
        return Graph.evalCommandCAS(cmdString)

    # (String, List) => ()
    setPointXY = (name, settings) ->
        Graph.setPointXY(name, settings)

    # (String) => List
    getPointXY = (name) ->
        return Graph.getPointXY(name)

    # (String, List) => ()
    setPointGXY = (name, settings) ->
        Graph.setPointGXY(name, settings)

    # (String) => List
    getPointGXY = (name) ->
        return Graph.getPointGXY(name)

    # () => ()
    removeGraph = () ->
      Graph.removeGraph()
      return

    {
      name: "graph"
    , prims: {
        "IMPORT": importGraph,
        "EQUATION": equation,
        "CREATE-POINT": createPoint,
        "UPDATE-POINT": updatePoint,
        "GET-POINT": getPoint,
        "EVAL-COMMAND": evalCommand,
        "EVAL-COMMAND-GET-LABELS": evalCommandGetLabels,
        "EVAL-COMMAND-CAS": evalCommandCAS,
        "SET-POINT-XY": setPointXY,
        "GET-POINT-XY": getPointXY,
        "SET-POINT-GXY": setPointGXY,
        "GET-POINT-GXY": getPointGXY,
        "REMOVE": removeGraph
      }
    }
}
