import Data.Char

-- Question 1
-- isUpper :: Char -> Bool
-- toUpper :: Char -> Char

-- Question 2
stripLower :: String -> String
stripLower = filter isUpper

-- Question 3
capitalize :: String -> String
capitalize "" = ""
capitalize (x:xs) = (toUpper x) : xs

-- Question 4
shout :: String -> String
shout "" = ""
shout (x:xs) = (toUpper x) : (shout xs)

-- Question 5
-- head :: [a] -> a
capitalize' :: String -> Char
capitalize' x = toUpper $ head $ x

-- Question 6
composedCapitalize :: String -> Char
composedCapitalize x = toUpper . head $ x

pointFreeCapitalize :: String -> Char
pointFreeCapitalize = toUpper . head

-- Standard Functions
-- Question 1
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = if x then True else myOr xs

-- Question 2
myAny :: (a -> Bool) -> [a] -> Bool
myAny _     [] = False
myAny f (x:xs) = if f x then True else myAny f xs 

-- Question 3
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (b:bs) = if (a == b) then True else myElem a bs

myAnyElem :: Eq a => a -> [a] -> Bool
myAnyElem a as = any (==a) as

-- Question 4
myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- Question 5
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

-- Question 6
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (a:as) = (f a) ++ squishMap f as

-- Question 7
squishAgain :: [[a]] -> [a]
squishAgain = squishMap (\x -> x)

customOrder :: Integer -> Integer -> Ordering
customOrder a b 
    | a > b  = GT
    | a == b = EQ
    | a < b  = LT

-- Question 8
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = undefined
myMaximumBy _ (a:[]) = a
myMaximumBy f (a:as) = 
    let tailMax = myMaximumBy f as
    in if (f a tailMax == GT) then a else tailMax

-- Question 9
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = undefined
myMinimumBy _ (a:[]) = a
myMinimumBy f (a:as) =
    let tailMin = myMinimumBy f as
    in if (f a tailMin == LT) then a else tailMin

-- Question 10
myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare
