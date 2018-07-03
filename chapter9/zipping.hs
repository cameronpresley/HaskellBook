-- Question 1
myZip :: [a] -> [b] -> [(a,b)]
myZip [] [] = []
myZip [] b  = []
myZip a []  = []
myZip (x:xs) (y:ys) = (x,y) : zip xs ys

-- Question 2
myZipWith :: (a->b->c) -> [a] -> [b] -> [c]
myZipWith f [] [] = []
myZipWith f []  b = []
myZipWith f a  [] = []
myZipWith f (a:as) (b:bs) = (f a b) : myZipWith f as bs

-- Question 3
myZip' :: [a] -> [b] -> [(a,b)]
myZip' a b = myZipWith (,) a b