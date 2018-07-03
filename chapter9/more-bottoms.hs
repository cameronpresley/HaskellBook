import Data.Bool
-- Question 1
-- take 1 $ map (+1) [undefined, 2, 3]
-- This will blow up because the first element is undefined
-- and can't be (+1)'d

-- Question 2
-- take 1 $ map (+1) [1, undefined, 3]
-- This will return a value (2), because the first element is ((+1) 1) == 2

-- Question 3
-- take 2 $ map (+1) [1, undefined, 3]
-- This will blow up because the second element is undefined
-- and can't be (+1)'d

-- Question 4
itIsMystery :: [Char] -> [Bool]
itIsMystery xs = map (\x -> elem x "aeiou") xs
-- This function takes a list of Char, and turns the Char 
-- into True if it's a vowel
-- or False if it's a consonant

-- Question 5a
numbersSquared = map (^2) [1..10]
-- [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

-- Question 5b
smallestNumbers = map minimum [[1..10], [10..20], [20..30]]
-- [1, 10, 20]

-- Question 5c
fifteenThreeTimes = map sum [[1..5], [1..5], [1..5]]
-- [15, 15, 15]

-- Question 6
negateThree = map (\x -> bool x (-x) (x == 3) )
