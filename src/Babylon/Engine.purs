module Babylon.Engine where

import Prelude

import Effect (Effect)
import Web.DOM (Element)

foreign import data Engine :: Type
foreign import newEngine :: Element -> Effect Engine
foreign import runRenderLoop :: Effect Unit -> Engine -> Effect Unit