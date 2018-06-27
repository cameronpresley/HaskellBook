dodgy :: (Num a) => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Int -> Int
oneIsOne = dodgy 1

oneIsTwo :: Int -> Int
oneIsTwo = (flip dodgy) 2

-- Question 1
-- dodgy 1 0 = 1 + 0 * 10
--           = 1 + 0
--           = 1

-- Question 2
-- dodgy 1 1 = 1 + 1 * 10
--           = 1 + 10
--           = 11

-- Question 3
-- dodgy 2 2 = 2 + 2 * 10
--           = 2 + 20
--           = 22

-- Question 4
-- dodgy 1 2 = 1 + 2 * 10
--           = 1 + 20
--           = 21

-- Question 5
-- dodgy 2 1 = 2 + 1 * 10
--           = 2 + 10
--           = 12

-- Question 6
-- oneIsOne 1 = (dodgy 1) 1
--            = dodgy 1 1
--            = 1 + 1 * 10
--            = 1 + 10
--            = 11

-- Question 7
-- oneIsOne 2 = (dodgy 1) 2
--            = dodgy 1 2
--            = 1 + 2 * 10
--            = 1 + 20
--            = 21

-- Question 8
-- oneIsTwo 1 = (flip dodgy) 2 1
--            = (dodgy y x) 2 1
--            = 1 + 2 * 10
--            = 1 + 20
--            = 21

-- Question 9
-- oneIsTwo 2 = (flip dodgy) 2 2
--            = (dodgy y x) 2 2
--            = 2 + 2 * 10
--            = 2 + 20
--            = 22

-- Question 10
-- oneIsOne 3 = dodgy 1 3
--            = 1 + 3 * 10
--            = 1 + 30
--            = 31

-- Question 11
-- oneIsTwo 3 = (flip dodgy) 2 3
--            = (dodgy y x) 2 3
--            = 3 + 2 * 10
--            = 3 + 20
--            = 23

