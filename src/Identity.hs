module Identity where

data Identity a = Identity a deriving Show

instance Eq a => Eq (Identity a) where
    (==) (Identity x)  (Identity y) = x == y
    