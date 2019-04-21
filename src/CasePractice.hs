module CasePractice where

functionC :: Ord a =>  a -> a -> a
functionC x y = case compare x y of
  LT -> x
  _  -> y