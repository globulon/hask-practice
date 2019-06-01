module Automotive where

newtype Price = Price Int deriving (Eq, Show)

data Manufacturer = Mini | Mazda | Tata | Jaguar
  deriving (Eq, Show)

data Airline = RyanAir | AerLingus | AirFrance
  deriving (Eq, Show)

data Vehicle = Car Manufacturer Price | Plane Airline
  deriving (Eq, Show)

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _       = False

isPlane :: Vehicle -> Bool
isPlane = not . isCar

areCars :: [Vehicle] -> [Bool]
areCars = fmap isCar

getManu :: Vehicle -> Maybe Manufacturer
getManu (Car m _ )= Just m
getManu _         = Nothing
