const BABYLON = require ("babylonjs")

exports.newEngine = canvas => () => new BABYLON.Engine (canvas, true)

exports.runRenderLoop = f => engine => () => {
  engine.runRenderLoop (f)

  window.addEventListener ("resize", engine.resize ())
}