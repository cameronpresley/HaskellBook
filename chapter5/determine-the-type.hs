{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

-- Question 1a
question1a = (*9) 6 -- Num a => a

-- Question 1b
question1b = head[(0, "doge"),(1,"kitteh")] 
-- result is (0, "doge") with type of Num a => (a, [Char])

-- Question 1c
question1c = head [(0 :: Integer, "doge"), (1,"kitteh")] -- (Integer, [Char])
-- result is (0, "doge") with type of (Integer, [Char])

-- Question 1d
question1d = if False then True else False
-- result is False with type of Bool

-- Question 1e
question1e = length [1, 2, 3, 4, 5]
-- result is 5 with type of Int

-- Question 1f
question1f = (length [1, 2, 3, 4]) > (length "TACOCAT")
-- result is False with type of Bool

-- Question 2
x = 5
y = x + 5
w = y * 10 -- w is 100 with type of (Num a) => a

-- Question 3
x' = 5
y' = x' + 5
z y' = y' * 10 -- z is (Num a) => (a -> a)

-- Question 4
x'' = 5
y'' = x'' + 5
f = 4 / y'' -- f is .4 with type of (Fractional a) => a


-- Question 5
a = "Julie"
b = " <3 "
c = "Haskell"
d = a ++ b ++ c -- d is "Julie <3 Haskell" with type of [Char]