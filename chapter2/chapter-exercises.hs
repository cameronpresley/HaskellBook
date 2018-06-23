-- Parenthesization
-- Question 1
-- Original: 2 + 2 * 3 - 1
-- Answer: 2 + (2 * 3) + 1

-- Question 2
-- Original: (^) 10 $ 1 + 1
-- Answer: (^) 10 $ (1+1)

-- Question 3
-- Original: 2 ^ 2 * 4 ^ 5 + 1
-- Answer: ((2^2) * (4^5)) + 1

-- Equivalent Expressions
-- Question 1
-- 1 + 1 == 2

-- Question 2
-- 10 ^ 2 == 10 + 9 * 10

-- Question 3
-- 400 - 37 <> (-) 37 400

-- Question 4
-- 100 `div` 3 <> 100 / 3

-- Question 5
-- 2 * 5 + 18 <> 2 * (5 + 18)

-- More fun with functions
-- Original
-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8
-- Solution (to be entered in the repl)
-- let z = 7
-- let y = z + 8
-- let x = y ^ 2
-- let waxOn = x * 5

-- Question 1
-- 10 + waxOn == 1135
-- (+10) waxOn == 1135
-- (-) 15 waxOn == -1110
-- (-) waxOn 15 == 1110 

-- Question 2
-- Enter 'let triple x = x * 3' into the repl

-- Question 3
-- triple waxOn == 3375

-- Question 4
waxOn = x * 5
  where x = y ^ 2
        y = z + 8
        z = 7

-- Question 5
triple x = x * 3

-- Question 6
waxOff x = triple x