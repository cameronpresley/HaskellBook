-- Question 1
-- f :: a -> a -> a -> a
-- if x :: Char, then f x :: Char -> Char -> Char

-- Question 2
-- g :: a -> b -> c -> b
-- The result of g 0 'c' "woot" is Char ('c')

-- Question 3
-- h :: (Num a, Num b) => a -> b -> b
-- The result of h 1.0 2 is Num b => b

-- Question 4
-- h :: (Num a, Num b) => a -> b -> b
-- The result of h 1 (5.5 :: Double) is Double

-- Question 5
-- jackal :: (Ord a, Eq b) => a -> b -> a
-- The result of jackal "keyboard" "has the word jackal in it"
--      is [Char]

-- Question 6
-- jackal :: (Ord a, Eq b) => a -> b -> a
-- The result of jackal "keyboard" is Eq b => b -> [Char]

-- Question 7
-- kessel :: (Ord a, Num b) => a -> b -> a
-- The result of kesel 1 2 is (Num a, Ord a) => a
-- (Num a) comes from passing 1
-- (Ord a) comes from the initial constraint in the signature

-- Question 8
-- kessel :: (Ord a, Num b) => a -> b -> a
-- The result of kessel 1 (2 :: Integer) is (Num a, Ord a) => a

-- Question 9
-- kessel :: (Ord a, Num b) => a -> b -> a
-- The result of kessel (1::Integer) 2 is Integer