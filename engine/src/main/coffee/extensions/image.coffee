# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (string) => ()
    importFile = (filename) ->
      Images.importFile(filename)
      return

    # (number) => ()
    zoom = (scale) ->
      world.zoom(scale)
      return

    # () => ()
    resetZoom = () ->
      world.resetZoom()
      return

    # (string) => ()
    importPcolors = (filename) ->
      Images.importPcolors(filename)
      return

    # () => ()
    clearImage = () ->
      Images.clearImage()
      return

    # (string) => ()
    importFromUser = (userId) ->
      Images.importFromUser(userId)
      return

    {
      name: "image"
    , prims: {
        "IMPORT-FILE": importFile,
        "ZOOM": zoom,
        "RESET-ZOOM": resetZoom,
        "IMPORT-PCOLORS": importPcolors,
        "CLEAR": clearImage,
        "IMPORT-FROM-USER": importFromUser
      }
    }
}
