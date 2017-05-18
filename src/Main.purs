module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

combiner :: String -> String
combiner x = x <> ", what?"

iterate f 0 x = x
iterate f n x = iterate f (n - 1) (f x)

iAmANumber :: Number
iAmANumber =
  let square x = x * x
  in square 42.0

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log "Hello, PureScript!"
  log $ combiner "wuh"
