-- Question 1
-- [x^y | x <- [1..5], y <- [2, undefined]
-- This will not blow up because the list isn't being evaluated

-- Question 2
-- take 1 $ [x^y | x <- [1..5], y <- [2, undefined]]
-- This will not blow up, because the first element of the list is 1^2

-- Question 3
-- sum [1, undefined, 3]
-- This will blow up because we need to evaluate the 2nd element to sum

-- Question 4
-- length [1, 2, undefined]
-- This will not blow up because we don't need to evaluate the 3rd element

-- Question 5
-- length $ [1, 2, 3] ++ undefined
-- This will blow up (++) will evaluate to add undefined 

-- Question 6
-- take 1 $ filter even [1, 2, 3, undefined]
-- This will not blow up, because 2 is the first even number.

-- Question 7
-- take 1 $ filter even [1, 3, undefined]
-- This will blow up, because 1 and 3 aren't even. We'll try to evaluate undefined

-- Question 8
-- take 1 $ filter odd [1, 3, undefined]
-- This will not blow up because 1 is the first odd number

-- Question 9
-- take 2 $ filter odd [1, 3, undefined]
-- This will not blow up because 1 and 3 are the first two odd numbers

-- Question 10
-- take 3 $ filter odd [1, 3, undefined]
-- This will blow up because we'll try to evaluate if undefined is odd