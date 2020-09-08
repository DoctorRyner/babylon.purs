module Main where

import Prelude

import Babylon.Camera (attachControl, newArcRotateCamera)
import Babylon.Engine (Engine, newEngine, runRenderLoop)
import Babylon.Scene (Scene, newScene, render)
import Data.Maybe (maybe)
import Effect (Effect)
import Math (pi)
import Web.DOM (Element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

createScene :: Engine -> Effect Scene
createScene engine = do
  scene  <- newScene engine
  camera <- newArcRotateCamera "MainCamera" (pi / 2.0) (pi / 2.0) 2.0 {x: 0.0, y: 0.0, z: 5.0} scene

  attachControl camera

  pure scene

run :: Element -> Effect Unit
run canvas = do
  engine <- newEngine canvas
  scene  <- createScene engine

  runRenderLoop (render scene) engine

main :: Effect Unit
main = do
  maybeCanvas <- getElementById "renderCanvas" =<< toNonElementParentNode <$> (document =<< window)

  maybe mempty run maybeCanvas
