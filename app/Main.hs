module Main where

import Date
import Identity
import TupleFunctions
import CasePractice

a::[Integer]
a = [2]

main :: IO ()
main = do
  print (functionC 7 11)
  print (functionC 11 7)

--    print (a |+| zero |+| a |+| zero)
--    print (mapf (* 2) [1,2,3])
--    print ((Date Tue Jul) == (Date Tue Aug))
--    print (Identity 7)
--    print (addTupleUp2 (5, 2))
