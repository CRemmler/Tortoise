# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    createMap = () ->
        Maps.createMap()

    # () => ()
    deleteMap = () ->
        Maps.deleteMap()

    # () => ()
    hideMap = () ->
        Maps.hideMap()

    # (string) => ()
    importMap = (data) ->
        Maps.importMap(data)

    # () => (string)
    exportMap = () ->
        return Maps.exportMap()

    # (number) => ()
    setZoom = (zoom) ->
        Maps.setZoom(zoom)

    # () => (number)
    getZoom = () ->
        return Maps.getZoom()

    # (list) => ()
    setCenterLatlng = (coords) ->
        Maps.setCenterLatlng(coords)

    # () => (list)
    getCenterLatlng = () ->
        return Maps.getCenterLatlng()

    # (string, list) => ()
    createMarker = (name, coords) ->
        Maps.createMarker(name, coords)

    # (list) => ()
    createMarkers = (data) ->
        Maps.createMarkers(data)

    # (string, number) => ()
    setLat = (name, lat) ->
        Maps.setLat(name, lat)

    # (string, number) => ()
    setLng = (name, lng) ->
        Maps.setLng(name, lng)

    # (string, list) => ()
    setLatlng = (name, latlng) ->
        Maps.setLatlng(name, latlng)

    # (string, string) => ()
    setLabel = (name, label) ->
        Maps.setLabel(name, label)

    # (string) => (number)
    getLat = (name) ->
        return Maps.getLat(name)

    # (string) => (number)
    getLng = (name) ->
        return Maps.getLng(name)

    # (string) => (list)
    getLatlng = (name) ->
        return Maps.getLatlng(name)

    # (string) => (string)
    getLabel = (name) ->
        return Maps.getLabel(name)

    # (string) => ()
    deleteMarker = (name) ->
        Maps.deleteMarker(name)

    # () => ()
    deleteMarkers = () ->
        Maps.deleteMarkers()

    # (list) => ()
    latlngToPatch = (coords) ->
        Maps.latlngToPatch(coords)

    # (list) => ()
    patchToLatlng = (coords) ->
        Maps.patchToLatlng(coords)

    {
      name: "maps"
    , prims: {
      "CREATE-MAP": createMap,
      "DELETE-MAP": deleteMap,
      "HIDE-MAP": hideMap,
      "IMPORT-MAP": importMap,
      "EXPORT-MAP": exportMap,
      "SET-ZOOM": setZoom,
      "GET-ZOOM": getZoom,
      "SET-CENTER-LATLNG": setCenterLatlng,
      "GET-CENTER-LATLNG": getCenterLatlng,
      "CREATE-MARKER": createMarker,
      "CREATE-MARKERS": createMarkers,
      "SET-LAT": setLat,
      "SET-LNG": setLng,
      "SET-LATLNG": setLatlng,
      "SET-LABEL": setLabel,
      "GET-LAT": getLat,
      "GET-LNG": getLng,
      "GET-LATLNG": getLatlng,
      "GET-LABEL": getLabel,
      "DELETE-MARKER": deleteMarker,
      "DELETE-MARKERS": deleteMarkers,
      "LATLNG-TO-PATCH": latlngToPatch,
      "PATCH-TO-LATLNG": patchToLatlng,
    }
    }
}
