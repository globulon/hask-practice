module TupleFunctions where

addTupleUp2 :: Num a => (a, a) -> a
addTupleUp2 (x, y) = x + y

fst3 :: (a, a, a) -> a
fst3 (x, _, _) = x

third3 :: (a, a, a) -> a
third3 (_, _, x) = x

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))