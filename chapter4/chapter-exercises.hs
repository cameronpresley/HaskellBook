awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- Question 1
-- What's the type signature of Length?
-- length :: [a] -> Int

-- Question 2a
-- length [1, 2, 3, 4, 5] == 5

-- Question 2b
-- length [(1, 2), (2, 3), (3, 4)] == 3

-- Question 2c
-- length allAwesome == length [awesome, also] == 2

-- Question 2d
-- length (concat allAwesome) 
--      == length (concat [awesome, also])
--      == length (concat [["Papuchon", "curry", ":)"], ["Quake", "The Simons"])
--      == length (["Papuchon", "curry", ":)", "Quake", "The Simons"])
--      == 5

-- Question 3
-- 6 / 3 works because 6 has a Fractional instance and 3 has a Fractional instance 
-- and Fractional has a Fractional has (/) defined.
-- However, 6 / length [1, 2, 3] doesn't work because 
-- length returns an Int, which doesn't have an Fractional Instance defined

-- Question 4
-- Instead of (/) which needs a Fractional instance, use `div` instead
-- which uses Integral where Int has a defined instance

-- Question 5
-- The type for the expression 2+3==5 is Bool
-- The result is True

-- Question 6
-- (from repl)
-- let x = 5
-- x + 3 == 5
-- The type for the expression is Bool with a value of False

-- Question 7
-- length allAwesome == 2 works and result is True
-- length [1, 'a', 3, 'b'] doesn't work because a list cannot contain values of different types
-- length allAwesome + length awesome works and result is 5
-- (8 == 8) && ('b' < 'a') works and result is False
-- (8 == 8) && 9 doesn't work because 9 is not a Bool

-- Question 8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

-- Question 9
myAbs :: Integer -> Integer
myAbs x = if x < 0 then (-x) else x

-- Question 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a,b) (c, d) = ((b, d),(a,c))

-- Correcting Syntax
-- Question 1
-- Add 1 to the length of a string arugment
lengthPlusOne :: [Char] -> Int
lengthPlusOne x = (+) (length x) 1

-- Question 2
-- Define identity
myId :: a -> a
myId x = x

-- Question 3
-- Define first
myFirst :: (a, b) -> a
myFirst(a, b) = a

-- Match function to their return types
-- Question 1
-- C

-- Question 2
-- B

-- Question 3
-- A

-- Question 4
-- D