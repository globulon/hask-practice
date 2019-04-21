module WordNumber where

import Data.List (intersperse)

data Numbers = Zero | One | Two | Three | Four | Five | Six | Seven | Eight | Nine deriving (Eq, Show, Enum)

digitToNumbers :: Int -> Numbers -> Numbers
digitToNumbers 0 ns = ns
digitToNumbers n ns = digitToNumbers (pred n) (succ ns)

digitToWord :: Int -> String
digitToWord n = show . digitToNumbers n $ Zero

decompose :: Int -> [Int] -> [Int]
decompose n ns
  | n < 10 = n : ns
  | otherwise = decompose (div n 10) (rem n 10 : ns)

digits :: Int -> [Int]
digits n = decompose n []

wordNumber :: Int -> String
wordNumber = concat . intersperse "-" . map digitToWord . digits