# (C) Uri Wilensky. https://github.com/NetLogo/Tortoise

module.exports = {

  dumper: undefined

  init: (workspace) ->

    # (string) => ()
    importImage = (filename) ->
      Images.importImage(filename)
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
        "IMPORT": importImage,
        "ZOOM": zoom,
        "RESET-ZOOM": resetZoom,
        "IMPORT-PCOLORS": importPcolors,
        "CLEAR": clearImage,
        "IMPORT-FROM-USER": importFromUser
      }
    }
}
