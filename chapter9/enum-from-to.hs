ordering :: (Eq a, Ord a, Enum a) => a -> a -> [a]
ordering a b 
    | b < a     = []
    | a == b    = [a]
    | otherwise = a : (ordering (succ a) b)

eftBool :: Bool -> Bool -> [Bool]
eftBool = ordering

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = ordering

eftInt :: Int -> Int -> [Int]
eftInt = ordering

eftChar :: Char -> Char -> [Char]
eftChar = ordering