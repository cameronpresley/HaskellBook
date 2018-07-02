-- Question 1
-- [1, 2, 3, 4, 5] 
-- This is in normal form

-- Question 2
-- 1 : 2 : 3 : 4 : _ 
-- This is in weak head normal form because the outermost 
-- expression (1 : ) has been evaluated but the whole 
-- list has not been evaluated

-- Question 3
-- enumFromTo 1 10 
-- This is not in either normal form because the outermost expression
-- (enumFromTo) is not a data constructor

-- Question 4
-- length [1, 2, 3, 4, 5]
-- This is not in either normal form because the outermost expression 
--  (length) is not a data constructor

-- Question 5
-- sum (enumFromTo 1 10)
-- This is not in either normal form because the outermost expression
--  (sum) is not a data constructor

-- Question 6
-- ['a' .. 'm'] ++ ['n' .. 'z']
-- This is not in either normal form because the outermost expression
--  (++) is not a data constructor

-- Question 7
-- (_, 'b')
-- This is in Weak Head Normal Form, because the outermost expression
-- ( ) is a data constructor (tuple), but the first argument has not been evaluated
