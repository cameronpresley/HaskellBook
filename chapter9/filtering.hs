-- Question 1
multiplesOf30 = filter (\x -> x `mod` 3 == 0) [1..30]

-- Question 2
numberOfMultiples = length multiplesOf30

-- Question 3
myFilter :: String -> [String]
myFilter = (filter (\x -> x /= "a" && x /="the" && x/="an")) . words