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

pull :: String -> [String] -> [String]
pull [] ls = ls
pull s ls = pull (dropWhile ( /= '\n') . dropWhile (== '\n') $ s) (takeWhile (/= '\n') s : ls)

myLines :: String -> [String]
myLines s = pull s []

splitSep :: Char -> String -> [String] -> [String]
splitSep sep [] ws = ws
splitSep sep s ws = splitSep sep (dropWhile (/= sep) . dropWhile (== sep) $ s) (takeWhile (/= sep) s : ws)

myWords :: String -> [String]
myWords s = splitSep ' ' s []
