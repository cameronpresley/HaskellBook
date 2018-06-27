avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
    | y >= 0.9  = 'A'
    | y >= 0.8  = 'B'
    | y >= 0.7  = 'C'
    | y >= 0.59 = 'D'
    | y <  0.59 = 'F'
    where y = x / 100

-- Question 1
-- If you put the otherwise guard at the top, this will match everything

-- Question 2
-- If you were to reorder the clauses of avgGrade, you will get the wrong answer
-- because we're only guarding on the upper bound, not the lower bound

-- Question 3
pal :: (Eq a) => [a] -> Bool
pal xs 
    | xs == reverse xs = True
    | otherwise        = False

-- This will return True when xs is a palindrome

-- Question 4
-- pal can take any list of a's that have an Eq instance defined

-- Question 5
-- The type of pal is: pal :: (Eq a) => [a] -> Bool

-- Question 6
numbers :: Int -> Int
numbers x
    | x < 0  = -1
    | x == 0 = 0
    | x > 0  = 1

-- This function returns an indication of whether its argument is positive
-- or negative or zero

-- Question 7
-- The numbers function can take any Int

-- Question 8
-- The type of numbers is: numbers :: Int -> Int