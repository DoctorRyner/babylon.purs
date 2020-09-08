const BABYLON = require ("babylonjs")

exports.newScene = engine => () => new BABYLON.Scene (engine)

exports.render = scene => () => scene.render ()