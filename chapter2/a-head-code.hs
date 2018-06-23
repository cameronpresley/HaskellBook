-- Question 1
-- let x = 5 in x
-- evaluates to 5 in the repl

-- Question 2
-- let x = 5 in x * x
-- evaluates to 25 in the repl

-- Question 3
-- let x = 5; y = 6 in x * y
-- evaluates to 30 in the repl

-- Question 4
-- let x = 3; y = 1000 in x + 3
-- evaluates to 6 in the repl (y is never used)

-- Question 1
-- let x = 3; y = 1000 in x * 3 + y
question1 = x * 3 + y
    where x = 3
          y = 1000

-- Question 2
-- let y = 10; x = 10*5 + y in x * 5
question2 = x * 5
    where x = 10 * 5 + y
          y = 10

-- Question 3 
-- let x = 7
--     y = negate x
--     z = y * 10
-- in z / x + y
question3 = z / x + y
    where x = 7
          y = negate x
          z = y * 10