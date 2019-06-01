module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
\ symmetry?"
sentences = firstSen ++ secondSen
            ++ thirdSen ++ fourthSen

--The code putStrLn sentences should print:
--Tyger Tyger, burning bright
--In the forests of the night
--What immortal hand or eye
--Could frame thy fearful symmetry?


myLines :: String -> [String]
myLines s = splitSep '\n' s []

splitSep :: Char -> String -> [String] -> [String]
splitSep sep [] ws = ws
splitSep sep s ws = splitSep sep (dropWhile (== sep) . dropWhile (/= sep) $ s) (ws ++ [takeWhile (/= sep) s])

myWords :: String -> [String]
myWords s = splitSep ' ' s []
