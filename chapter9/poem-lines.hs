module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful\
          \ symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

takeUntilNewline :: String -> String
takeUntilNewline = takeWhile (/='\n')

dropUntilNewline :: String -> String
dropUntilNewline = dropWhile (/='\n')

dropAllNewline :: String -> String
dropAllNewline = dropWhile (=='\n')

myLines :: String -> [String]
myLines s
    | s == ""   = []
    | otherwise = takeUntilNewline s : myLines (dropAllNewline $ dropUntilNewline $ s)

shouldEqual :: [String]
shouldEqual =
    [ "Tyger Tyger, burning bright"
    , "In the forests of the night"
    , "What immortal hand or eye"
    , "Could frame thy fearful symmetry?"
    ]

main :: IO()
main =
    print $ "Are they equal? " ++ show (myLines sentences == shouldEqual)