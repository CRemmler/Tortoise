# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (String, Number, Number, Number, Number, Number, Number, Number, Number, Number, Number) => ()
    equation = (phrase, xmin, ymin, xmax, ymax, patchesPerGridX, patchesPerGridY, xAxis, yAxis, gridsPerPatchX) ->
        return 5
    {
      name: "graph"
    , prims: {
        "EQUATION": equation
      }
    }
}
