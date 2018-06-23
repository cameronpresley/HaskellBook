-- Question 1
-- ++ [1, 2, 3] [4, 5, 6]
-- This won't work in the repl because ++ is being used as prefix, but it's been notated as infix 
-- Fix: (++) [1, 2, 3] [4, 5, 6]

-- Question 2
-- '<3' ++ ' Haskell'
-- This won't work in the repl since both values are really strings (i.e. [char]), not char
-- Fix: "<3" ++ " Haskell"

-- Question 3
-- concat ["<3", "Haskell"]
-- This will work (yields "<3 Haskell")