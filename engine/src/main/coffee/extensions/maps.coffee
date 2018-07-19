# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined
  init: (workspace) ->
    # () => ()
    hideMap = () ->
        Maps.hideMap()

    # () => ()
    showMap = () ->
        Maps.showMap()

    # (string) => ()
    importFile = (filename) ->
        Maps.importFile(filename)

    # (string) => ()
    exportFile = (filename) ->
        Maps.exportFile(filename)

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

    # (string) => (list)
    getMarker = (name) ->
        return Maps.getMarker(name)

    # (string) => ()
    hideObject = (name) ->
        Maps.hideObject(name)

    # (string) => ()
    showObject = (name) ->
        Maps.showObject(name)

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
    objectExists = (name) ->
        return Maps.objectExists(name)

    # (number) => ()
    setOpacity = (opacity) ->
        Maps.setOpacity(opacity)

    # () => (number)
    getOpacity = () ->
        return Maps.getOpacity()

    # () => ()
    bringToFront = () ->
        Maps.bringToFront()

    # () => ()
    sendToBack = () ->
        Maps.sendToBack()

    # () => (list)
    getMapOffset = () ->
        return Maps.getMapOffset()

    # (list) => ()
    setMapOffset = (offset) ->
        Maps.setMapOffset(offset)

    # (string) => ()
    setAll = (data) ->
        Maps.setAll(data)

    # () => (string)
    getAll = () ->
        return Maps.getAll()

    # () => ()
    updateMap = () ->
        Maps.updateMap()

    # (string, list) => ()
    createPath = (name, vertices) ->
        Maps.createPath(name, vertices)

    # (string, string) => ()
    setPathColor = (name, color) ->
        Maps.setPathColor(name, color)

    # (string) => (string)
    getPathColor = (name) ->
        return Maps.getPathColor(name)

    # (string, list) => ()
    setPathVertices = (name, vertices) ->
        Maps.setPathVertices(name, vertices)

    # (string) => (list)
    getPathVertices = (name) ->
        return Maps.getPathVertices(name)

    # (string) => ()
    hideObject = (name) ->
        Maps.hideObject(name)

    # (string) => ()
    showObject = (name) ->
        Maps.showObject(name)

    # (string) => (string)
    getObjectType = (name) ->
        return Maps.getObjectType(name)

    # (list) => ()
    createObject = (object) ->
        Maps.createObject(object)

    # (list) => ()
    createObjects = (objects) ->
        Maps.createObjects(objects)

    # (string) => (list)
    getObject = (name) ->
        return Maps.getObject(name)

    # () => (list)
    getObjects = () ->
        return Maps.getObjects()

    # (string) => ()
    deleteObject = (name) ->
        Maps.deleteObject(name)

    # () => ()
    deleteObjects = () ->
        Maps.deleteObjects()

    # (string) => ()
    deletePath = (name) ->
        Maps.deletePath(name)

    # () => ()
    deletePaths = () ->
        Maps.deletePaths()

    # (string, boolean) => ()
    setDraggable = (name, draggable) ->
        Maps.setDraggable(name, draggable)

    # (string) => (boolean)
    getDraggable = (name) ->
        return Maps.getDraggable(name)

    # () => (list)
    getMyLatlng = () ->
        return Maps.getMyLatlng()

    # () => ()
    updateMyLatlng = () ->
        Maps.updateMyLatlng()

    # () => ()
    mouseOn = () ->
        Maps.mouseOn()

    # () => ()
    mouseOff = () ->
        Maps.mouseOff()

    {
      name: "maps"
    , prims: {
      "HIDE-MAP": hideMap,
      "SHOW-MAP": showMap,
      "IMPORT-FILE": importFile,
      "EXPORT-FILE": exportFile,
      "SET-ZOOM": setZoom,
      "GET-ZOOM": getZoom,
      "SET-CENTER-LATLNG": setCenterLatlng,
      "GET-CENTER-LATLNG": getCenterLatlng,
      "CREATE-MARKER": createMarker,
      "CREATE-MARKERS": createMarkers,
      "GET-MARKERS": getMarkers,
      "GET-MARKER": getMarker,
      "HIDE-OBJECT": hideObject,
      "SHOW-OBJECT": showObject,
      "SET-LAT": setLat,
      "SET-LNG": setLng,
      "SET-LATLNG": setLatlng,
      "GET-LAT": getLat,
      "GET-LNG": getLng,
      "GET-LATLNG": getLatlng,
      "DELETE-MARKER": deleteMarker,
      "DELETE-MARKERS": deleteMarkers,
      "LATLNG-TO-PATCH": latlngToPatch,
      "PATCH-TO-LATLNG": patchToLatlng,
      "OBJECT-EXISTS": objectExists,
      "SET-OPACITY": setOpacity,
      "GET-OPACITY": getOpacity,
      "BRING-TO-FRONT": bringToFront,
      "SEND-TO-BACK": sendToBack,
      "GET-MAP-OFFSET": getMapOffset,
      "SET-MAP-OFFSET": setMapOffset,
      "SET-ALL": setAll,
      "GET-ALL": getAll,
      "UPDATE-MAP": updateMap,
      "CREATE-PATH": createPath,
      "SET-PATH-COLOR": setPathColor,
      "GET-PATH-COLOR": getPathColor,
      "SET-PATH-VERTICES": setPathVertices,
      "GET-PATH-VERTICES": getPathVertices,
      "HIDE-OBJECT": hideObject,
      "SHOW-OBJECT": showObject,
      "GET-OBJECT-TYPE": getObjectType,
      "CREATE-OBJECT": createObject,
      "CREATE-OBJECTS": createObjects,
      "GET-OBJECT": getObject,
      "GET-OBJECTS": getObjects,
      "DELETE-OBJECT": deleteObject,
      "DELETE-OBJECTS": deleteObjects,
      "DELETE-PATH": deletePath,
      "DELETE-PATHS": deletePaths,
      "SET-DRAGGABLE": setDraggable,
      "GET-DRAGGABLE": getDraggable,
      "GET-MY-LATLNG": getMyLatlng,
      "UPDATE-MY-LATLNG": updateMyLatlng,
      "MOUSE-ON": mouseOn,
      "MOUSE-OFF": mouseOff
    }
    }
}
