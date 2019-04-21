module Lists where

myHead :: [a] -> Maybe a
myHead      [] = Nothing
myHead (n : _) = Just n

myTail :: [a] -> Maybe [a]
myTail []      = Nothing
myTail (_ : t) = Just t
