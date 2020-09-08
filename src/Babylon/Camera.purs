module Babylon.Camera where

import Prelude

import Babylon.Scene (Scene)
import Effect (Effect)

foreign import data Camera :: Type

foreign import newArcRotateCamera
  :: String
  -> Number
  -> Number
  -> Number
  -> {x :: Number, y :: Number, z :: Number}
  -> Scene
  -> Effect Camera

foreign import attachControl :: Camera -> Effect Unit