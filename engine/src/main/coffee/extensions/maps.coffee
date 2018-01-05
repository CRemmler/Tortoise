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

    # (String) => ()
    removeMarker = (name) ->
        Maps.removeMarker(name)

    # (String, List) => ()
    setMarkerXY = (name, settings) ->
        Maps.setMarkerXY(name, settings)

    # (String) => List
    getMarkerXY = (name) ->
        return Maps.getMarkerXY(name)

    # (String, List) => ()
    setMarkerLngLat = (name, settings) ->
        Maps.setMarkerLngLat(name, settings)

    # (String) => List
    getMarkerLngLat = (name) ->
        return Maps.getMarkerLngLat(name)

    {
      name: "maps"
    , prims: {
        "IMPORT": importMap,
        "EXPORT": exportMap,
        "CREATE-MARKER": createMarker,
        "REMOVE-MARKER": removeMarker,
        "SET-MARKER-XY": setMarkerXY,
        "GET-MARKER-XY": getMarkerXY,
        "SET-MARKER-LNG-LAT": setMarkerLngLat,
        "GET-MARKER-LNG-LAT": getMarkerLngLat
      }
    }
}
