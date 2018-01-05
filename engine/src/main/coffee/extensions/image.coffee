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
    clear = () ->
      Images.clearImage()
      return

    {
      name: "image"
    , prims: {
        "IMPORT": importImage,
        "ZOOM": zoom,
        "RESET-ZOOM": resetZoom,
        "IMPORT-PCOLORS": importPcolors,
        "CLEAR": clear
      }
    }
}
