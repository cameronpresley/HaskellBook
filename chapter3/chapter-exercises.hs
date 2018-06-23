-- Reading Syntax
-- Question 1
-- concat [[1, 2, 3], [4, 5, 6]]
-- This works, yielding [1, 2, 3, 4, 5, 6]

-- ++ [1, 2, 3] [4, 5, 6]
-- This won't work, ++ is being used as prefix, but is notated as infix
-- Fix: (++) [1, 2, 3] [4, 5, 6]

-- (++) "hello" " world"
-- This will work, yielding "hello world"

-- ["hello" ++ " world"]
-- This will work, yielding ["hello world"]

-- 4 !! "hello"
-- This will not work, the operands for !! are reversed
-- Fix: "hello" !! 4, yielding 'o'

-- (!!) "hello" 4
-- This will work, yielding 'o'

-- take "4 lovely"
-- This will not work, take requires an int for the first argument
-- Fix: take 4 "lovely", yielding "love"

-- take 3 "awesome"
-- This will work, yielding "awe"

-- Question 2
-- concat [[1*6], [2*6], [3*6]] == [6, 12, 18]
-- "rain" ++ drop 2 "elbow" == "rainbow"
-- 10 * head [1, 2, 3] == 10
-- (take 3 "Julie") ++ (tail "yes") == "Jules"
-- concat [tail [1, 2, 3],
--         tail [4, 5, 6],
--         tail [7, 8, 9]] == [2, 3, 5, 6, 8, 9]

-- Building Functions
-- Question 1a
-- Given: "Curry is awesome", return "Curry is awesome!"
-- Answer: "Curry is awesome" ++ "!"

-- Question 1b
-- Given: "Curry is awesome!", return "y"
-- Answer: take 1 (drop 4 "Curry is awesome!")

-- Question 1c
-- Given: "Curry is awesome!", return "awesome!"
-- Answer: drop 9 "Curry is awesome!"

-- Question 2a
-- exclaim s = s ++ "!"

-- Question 2b
-- getFifth s = take 1 (drop 4) s

-- Question 2c
-- getLastWord s = drop 9 s

-- Question 3
thirdLetter :: [Char] -> Char
thirdLetter x = (!!) x 2

-- Question 4
letterIndex :: Int -> Char
letterIndex x = (!!) "Curry is awesome!" x

-- Question 5
rvrs s =
    let first = take 5 s
        second = take 2 (drop 6 s)
        third = take 7 (drop 9 s)
        in third ++ " " ++ second ++ " " ++ first