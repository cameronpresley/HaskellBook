-- Review of Types
-- Question 1
-- [[True, False], [True, True], [False, True]] :: [[Bool]]

-- Question 2
-- :t [[True, False], [True, True], [False, True]] 
--      == :t [[3 == 3], [6 > 5],[3 < 4]]

-- Question 3
func :: [a] -> [a] -> [a]
func x y = x ++ y
-- Both x and y must be the same type and both must be lists. In addition, if x is a String, then y must be a String

-- Question 4
-- func "Hello" "World" is a valid application

-- Reviewing Curry
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String->String->String
flippy = flip cattyConny

appendCatty :: String -> String
appendCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- Question 1
-- appendCatty "woohoo!" 
--  == cattyConny "woops" "woohoo!"
--  == "woops" ++ " mrow " + "woohoo!"
--  == "woops mrow woohoo!" 

-- Question 2
-- frappe "1"
--  == flippy "haha" "1"
--  == flip cattyConny "haha" "1"
--  == cattyConny "1" "haha"
--  == "1" ++ " mrow " + "haha"
--  == "1 mrow haha" 

-- Question 3
-- frappe (appendCatty "2")
--  == frappe (cattyConny "woops" "2")
--  == frappe ("woops" ++ " mrow " ++ "2")
--  == frappe ("woops mrow 2")
--  == flippy "haha" "woops mrow 2"
--  == flip cattyConny "haha" "woops mrow 2"
--  == cattyConny "woops mrow 2" "haha"
--  == "woops mrow 2" ++ " mrow " ++ "haha"
--  == "woops mrow 2 mrow haha"

-- Question 4
-- appendCatty (frappe "blue")
--  == appendCatty (flippy "haha" "blue")
--  == appendCatty (flip cattyConny "haha" "blue")
--  == appendCatty (cattyConny "blue" "haha")
--  == appendCatty ("blue" ++ " mrow " ++ "haha")
--  == appendCatty "blue mrow haha"
--  == cattyConny "woops" "blue mrow haha"
--  == "woops" ++ " mrow " ++ "blue mrow haha"
--  == "woops mrow blue mrow haha"

-- Question 5
-- cattyConny (frappe "pink") (cattyConny "green" (appendCatty "blue"))
--  == cattyConny (frappe "pink") (cattyConny "green" (cattyConny "woops" "blue"))
--  == cattyConny (frappe "pink") (cattyConny "green" ("woops" ++ " mrow " ++ "blue"))
--  == cattyConny (frappe "pink") (cattyConny "green" "woops mrow blue")
--  == cattyConny (frappe "pink") ("green" ++ " mrow " ++ "woops mrow blue")
--  == cattyConny (frappe "pink") ("green mrow woops mrow blue")
--  == cattyConny (flippy "haha" "pink") ("green mrow woops mrow blue")
--  == cattyConny (flip cattyConny "haha" "pink") ("green mrow woops mrow blue")
--  == cattyConny (cattyConny "pink" "haha") ("green mrow woops mrow blue")
--  == cattyConny ("pink" ++ " mrow " ++ "haha") ("green mrow woops mrow blue")
--  == cattyConny "pink mrow haha" "green mrow woops mrow blue"
--  == "pink mrow haha" ++ " mrow " ++ "green mrow woops mrow blue"
--  == "pink mrow haha mrow green mrow woops mrow blue"

-- Question 6
-- cattyConny (flippy "Pugs" "are") "awesome"
--  == cattyConny (flip cattyConny "Pugs" "are") "awesome"
--  == cattyConny (cattyConny "are" "Pugs") "awesome"
--  == cattyConny ("are" ++ " mrow " ++ "Pugs") "awesome"
--  == cattyConny ("are mrow Pugs") "awesome"
--  == "are mrow Pugs" ++ " mrow " ++ "awesome"
--  == "are mrow Pugs mrow awesome"

-- Recursion
-- Question 1
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
    where go n   d count
           | n < d = (count, n)
           | otherwise = go (n-d) d (count+1) 

-- dividedBy 15 2
--  == go (15) (2) 0
--  == go (15-2) (2) (0+1)
--  == go 13 2 1
--  == go (13-2) (2) (1+1)
--  == go 11 2 2
--  == go (11-2) 2 (2+1)
--  == go 9 2 3
--  == go (9-2) 2 (3+1)
--  == go 7 2 4
--  == go (7-2) 2 (4+1)
--  == go 5 2 5
--  == go (5-2) 2 (5+1)
--  == go 3 2 6
--  == go (3-2) 2 (6+1)
--  == go 1 2 7
--  == (7, 1)

-- Question 2
addAll :: (Eq a, Num a) => a -> a
addAll 0 = 0
addAll n = n + (addAll (n-1))

-- Question 3
multiply :: (Integral a) => a -> a -> a
multiply a 1 = a
multiply a b = a + (multiply a (b-1))

-- Fixing dividedBy
data DividedResult = Result Integer | DividedByZero
fixedDivideBy :: Integer -> Integer -> DividedResult
fixedDivideBy num 0 = DividedByZero
fixedDivideBy num denom = Result value
    where value
            | num < 0 && denom < 0 = result
            | num > 0 && denom > 0 = result
            | otherwise            = negate result
          result = fst (dividedBy (abs num) (abs denom))

-- McCarthy 91 Function
mc91 :: (Integral a) => a -> a
mc91 n = result
    where result
            | n > 100   = n-10
            | otherwise = mc91(mc91(n+11))