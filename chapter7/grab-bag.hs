-- Question 1
-- Which of these are equivalent?
-- a) mTh x y z = x * y * z
-- b) mTh x y = \z -> x * y * z
-- c) mTh x = \y -> \z -> x * y * z
-- d) mTh = \x -> \y -> \z -> x * y * z
-- These are all equivalent

-- Question 2
-- mTh 3 :: Integer -> Integer -> Integer

-- Question 3a
addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1

-- Question 3b
--addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5

-- Question 3c
-- mflip f = \x -> \y -> f y x
mflip f x y = f y x