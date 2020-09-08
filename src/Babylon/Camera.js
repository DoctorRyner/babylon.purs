const BABYLON = require ("babylonjs")

exports.newArcRotateCamera =
  name =>
  alpha =>
  beta =>
  radius =>
  _target =>
  scene =>
  () => new BABYLON.ArcRotateCamera (name, alpha, beta, radius, new BABYLON.Vector3 (0, 0, 5), scene)

exports.attachControl = canvas => camera => () => camera.attachControl (canvas, true)