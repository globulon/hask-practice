module Recursion where


incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes r n = 1 + incTimes (r - 1) n

applyTimes :: (Eq a, Num a) => a -> (a -> a) -> a -> a
applyTimes 0 f n = n
applyTimes r f n = applyTimes (r - 1) f (f n)

incTimes' :: (Eq a, Num a) => a -> a -> a
incTimes' r = applyTimes r (+ 1)

mc91 :: (Ord a, Num a) => a -> a
mc91 x
  | x > 100   = x - 10
  | otherwise = mc91 . mc91 $ (x + 11)
