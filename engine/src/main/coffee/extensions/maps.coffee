# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (List) => ()
    importMap = (settings) ->
        Maps.importMap(settings)

    # () => (List)
    exportMap = (settings) ->
        return Maps.exportMap()

    # (String, List) => ()
    createMarker = (name, settings) ->
        Maps.createMarker(name, settings)

    # (String, List) => ()
    updateMarker = (name, settings) ->
        Maps.updateMarker(name, settings)

    # (String) => ()
    deleteMarker = (name) ->
        Maps.deleteMarker(name)

    # (String) => (List)
    getMarker = (name) ->
        return Maps.getMarker(name)

    # () => (List)
    getMarkers = () ->
        return Maps.getMarkers()

    # (List) => List
    patchToLnglat = (coords) ->
        return Maps.patchToLnglat(coords)

    # (List) => List
    lnglatToPatch = (coords) ->
        return Maps.lnglatToPatch(coords)

    # (List) => List
    pointsToMarkers = (points) ->
        return Maps.pointsToMarkers(points)

    # () => ()
    removeMap = () ->
      Maps.removeMap()
      return

    {
      name: "maps"
    , prims: {
        "IMPORT": importMap,
        "EXPORT": exportMap,
        "CREATE-MARKER": createMarker,
        "UPDATE-MARKER": updateMarker,
        "DELETE-MARKER": deleteMarker,
        "GET-MARKER": getMarker,
        "PATCH-TO-LNGLAT": patchToLnglat,
        "LNGLAT-TO-PATCH": lnglatToPatch,
        "REMOVE": removeMap,
        "GET-MARKERS": getMarkers,
        "POINTS-TO-MARKERS": pointsToMarkers
      }
    }
}
