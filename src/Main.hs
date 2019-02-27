module Main where

import Crypto.PubKey.RSA (PublicKey, PrivateKey, generate)
import System.IO (readFile)
import Data.Time (getCurrentTime)

generateKey :: IO (PublicKey, PrivateKey)
generateKey = do
  (public, private) <- generate 64 3
  return (public, private)

printTime :: IO ()
printTime = do
  time <- getCurrentTime
  putStrLn (show time)

printConfig :: IO ()
printConfig = do
  contents <- readFile "stack.yaml"
  putStrLn contents

printNumbers :: IO ()
printNumbers = do
  putStrLn (show (3+4)) 

main :: IO ()
main = do
  putStrLn "hello world"
  printNumbers
  printConfig
  printTime
  (pu, pr) <- generateKey
  putStrLn ("(Public, Private) = (" ++ show pu ++ ", " ++ show pr ++ ")\n")

m :: IO ()
m = main
