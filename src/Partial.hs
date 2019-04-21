module Partial where

returnAfterApply :: (a -> b) -> a -> c -> b
returnAfterApply f a _ = f a

data Employee = Coder
                | Manager
                | Veep
                | CEO deriving (Eq, Ord, Show)

compareEmployee :: (Employee -> Employee -> Ordering) -> Employee -> Employee -> String
compareEmployee comp e e' = case comp e e' of
  LT -> show e' ++ " is the boss of " ++ show e
  GT -> show e ++ " is the boss of " ++ show e'
  _  -> "No boss found"

employeeRank :: Employee -> Employee -> IO()
employeeRank e e' = print (compareEmployee compare e e')
