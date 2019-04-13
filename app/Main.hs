module Main where

import Algebras

a::[Integer]
a = [2]

main :: IO ()
main =
  do
    print (a |+| zero |+| a |+| zero)
    print (mapf (* 2) [1,2,3])
