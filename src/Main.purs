module Main where

import Prelude

import Babylon.Engine (newEngine)
import Data.Maybe (maybe)
import Effect (Effect)
import Web.DOM (Element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument (toNonElementParentNode)
import Web.HTML.Window (document)

run :: Element -> Effect Unit
run canvas = do
  engine <- newEngine canvas

  mempty

main :: Effect Unit
main = do
  maybeCanvas <- getElementById "renderCanvas" =<< toNonElementParentNode <$> (document =<< window)

  maybe mempty run maybeCanvas
