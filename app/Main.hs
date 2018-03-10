{-# LANGUAGE TypeApplications #-}

module Main where

import Control.Exception.Safe
import Control.Concurrent

main :: IO ()
main = bracket_ (pure ()) (threadDelay 1000 >> putStrLn "text") (threadDelay 100500100500)
-- main = handleAny (putStrLn . mappend "caught " . show) (threadDelay 100500100500)
-- main = handleAsync @IO @SomeException (putStrLn . mappend "caught " . show) (threadDelay 100500100500)
