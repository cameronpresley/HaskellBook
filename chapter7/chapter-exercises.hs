-- Multiple Choice
-- Question 1
-- A polymorphic function may resolve to values of different types
-- , depending on inputs

-- Question 2
f :: Char -> String
f = undefined

g :: String -> [String]
g = undefined

comp :: Char -> [String]
comp = g . f

-- Question 3
-- f :: (Ord a) => a -> a -> Bool
-- f 1 :: (Ord a, Num a) => a -> Bool

-- Question 4
-- A function with the type (a-> b) -> c is a higher order function

-- Question 5
-- f :: a -> a
-- f x = x
-- f True :: Bool

-- Let's write code
-- Question 1
tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10

-- Question 1a, 1b
tensDigitWithDivMod :: Integral a => a -> a
tensDigitWithDivMod x = d
    where tens = fst (divMod x 10)
          d    = tens `mod` 10

-- Question 1c
hunsD :: Integral a => a -> a
hunsD x = d
    where hundreds = fst (divMod x 100)
          d        = hundreds `mod` 10

-- Question 2
foldBool :: a -> a -> Bool -> a
foldBool x _ False = x
foldBool _ y True = y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y b
    | b == False = x
    | b == True  = y

-- Question 3
g' :: (a -> b) -> (a, c) -> (b,c)
g' f (a, c) = (f a, c)