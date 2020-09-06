const BABYLON = require ("babylonjs")

exports.newEngine = canvas => () => new BABYLON.Engine (canvas, true)