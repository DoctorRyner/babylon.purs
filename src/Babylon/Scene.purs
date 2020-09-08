module Babylon.Scene where

import Prelude

import Babylon.Engine (Engine)
import Effect (Effect)

foreign import data Scene :: Type
foreign import newScene :: Engine -> Effect Scene
foreign import render :: Scene -> Effect Unit