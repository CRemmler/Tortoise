# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    hideMap = () ->
        Maps.hideMap()

    # (list) => ()
    showMap = (settings) ->
        Maps.showMap(settings)

    # (string) => ()
    setData = (data) ->
        Maps.setData(data)

    # (string) => ()
    importFile = (filename) ->
        Maps.importFile(filename)

    # () => (string)
    getData = () ->
        return Maps.getData()

    # () => ()
    exportFile = () ->
        Maps.exportFile()

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

    # () => (list)
    getMarkers = () ->
        return Maps.getMarkers()

    # (string) => ()
    hideMarker = (name) ->
        Maps.hideMarker(name)

    # (string) => ()
    showMarker = (name) ->
        Maps.showMarker(name)

    # (string, number) => ()
    setLat = (name, lat) ->
        Maps.setLat(name, lat)

    # (string, number) => ()
    setLng = (name, lng) ->
        Maps.setLng(name, lng)

    # (string, list) => ()
    setLatlng = (name, latlng) ->
        Maps.setLatlng(name, latlng)

    # (string) => (number)
    getLat = (name) ->
        return Maps.getLat(name)

    # (string) => (number)
    getLng = (name) ->
        return Maps.getLng(name)

    # (string) => (list)
    getLatlng = (name) ->
        return Maps.getLatlng(name)

    # (boolean) => ()
    setDraggable = (draggable) ->
        Maps.setDraggable(draggable)

    # (string) => ()
    deleteMarker = (name) ->
        Maps.deleteMarker(name)

    # () => ()
    deleteMarkers = () ->
        Maps.deleteMarkers()

    # (list) => (list)
    latlngToPatch = (coords) ->
        return Maps.latlngToPatch(coords)

    # (list) => (list)
    patchToLatlng = (coords) ->
        return Maps.patchToLatlng(coords)

    # (string) => (boolean)
    exists = (name) ->
        return Maps.exists(name)

    # (string,list) => ()
    createPath = (name,vertices) ->
        Maps.createPath(name,vertices)

    # (string) => (list)
    getPath = (name) ->
        return Maps.getPath(name)

    # (string) => ()
    hidePath = (name) ->
        Maps.hidePath(name)

    # (string) => ()
    showPath = (name) ->
        Maps.showPath(name)

    # (string) => ()
    deletePath = (name) ->
        Maps.deletePath(name)

    # (string) => ()
    importWorld = (filename) ->
        Maps.importWorld(filename)

    # () => ()
    exportWorld = () ->
        Maps.exportWorld()

    {
      name: "maps"
    , prims: {
      "HIDE-MAP": hideMap,
      "SHOW-MAP": showMap,
      "SET-DATA": setData,
      "IMPORT-FILE": importFile,
      "GET-DATA": getData,
      "EXPORT-FILE": exportFile,
      "SET-ZOOM": setZoom,
      "GET-ZOOM": getZoom,
      "SET-CENTER-LATLNG": setCenterLatlng,
      "GET-CENTER-LATLNG": getCenterLatlng,
      "CREATE-MARKER": createMarker,
      "CREATE-MARKERS": createMarkers,
      "GET-MARKERS": getMarkers,
      "HIDE-MARKER": hideMarker,
      "SHOW-MARKER": showMarker,
      "SET-LAT": setLat,
      "SET-LNG": setLng,
      "SET-LATLNG": setLatlng,
      "GET-LAT": getLat,
      "GET-LNG": getLng,
      "GET-LATLNG": getLatlng,
      "SET-DRAGGABLE": setDraggable,
      "DELETE-MARKER": deleteMarker,
      "DELETE-MARKERS": deleteMarkers,
      "LATLNG-TO-PATCH": latlngToPatch,
      "PATCH-TO-LATLNG": patchToLatlng,
      "EXISTS": exists,
      "CREATE-PATH": createPath,
      "GET-PATH": getPath,
      "HIDE-PATH": hidePath,
      "SHOW-PATH": showPath,
      "DELETE-PATH": deletePath,
      "IMPORT-WORLD": importWorld,
      "EXPORT-WORLD": exportWorld
    }
    }
}
