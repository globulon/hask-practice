module Algebras where

class SemiGroup a where
  (|+|) :: a -> a -> a
  {-# MINIMAL (|+|) #-}

class SemiGroup a => Monoid a where
  zero :: a
  {-# MINIMAL zero #-}

class Functor f where
  mapf :: (a -> b) ->  f a -> f b
  {-# MINIMAL mapf #-}

instance Algebras.Functor [] where
  mapf = map

instance  SemiGroup [a] where
  (|+|) = (++)

instance Algebras.Monoid [a] where
  zero = []
  {-# INLINE zero #-}


