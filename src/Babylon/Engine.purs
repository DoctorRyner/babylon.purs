module Babylon.Engine where

import Effect (Effect)
import Web.DOM (Element)

foreign import data Engine :: Type

foreign import newEngine :: Element -> Effect Engine