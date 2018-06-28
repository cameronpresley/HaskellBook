removeWhiteSpace :: [Char] -> [Char]
removeWhiteSpace = dropWhile (==' ')

removeNonWhiteSpace :: [Char] -> [Char]
removeNonWhiteSpace = dropWhile (/= ' ')

myWords :: [Char] -> [[Char]]
myWords a 
    | a == ""   = []
    | otherwise = 
        (takeWhile (/=' ') a) : myWords (removeWhiteSpace $ removeNonWhiteSpace $ a)


takeUntilToken :: Char -> String -> String
takeUntilToken t = takeWhile (/= t)

dropUntilToken :: Char -> String -> String
dropUntilToken t = dropWhile(/= t)

removeTokens :: Char -> String -> String
removeTokens t = dropWhile(== t)

myTokenizer :: Char -> String -> [String]
myTokenizer token s 
    | s == ""   = []
    | otherwise = (takeUntil s) : myTokenizer token (remove $ dropUntil $ s) where
                    takeUntil = takeUntilToken token
                    remove = removeTokens token
                    dropUntil = dropUntilToken token