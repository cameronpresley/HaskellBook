mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- Question 1
allTuples = [(x,y) | x <- mySqr, y <- myCube]

-- Question 2
lessThan50 = [(x,y) | x <- mySqr, y <- myCube, x < 50, y < 50]

-- Question 3
numAllTuples = length allTuples
numLessThan50 = length lessThan50