mySqr = [x^2 | x <- [1..10]]

question1 = [x | x <- mySqr, rem x 2 == 0]
-- This will be all the even squares between 1 and 10 
-- [4, 16, 36, 64, 100]

question2 = [(x,y) | x <-mySqr, y<-mySqr, x < 50, y > 50]
-- This will yield all pairs from mySqr such that x < 50 and y > 50
-- [ (1,64), (1,81), (1,100)
-- , (4,64), (4, 81), (4, 100)
-- , (9,64), (9, 81), (9, 100)
-- , (16,64), (16, 81), (16,100)
-- , (25,64), (25, 81), (25, 100)
-- , (36,64), (36, 81), (36, 100)
-- , (49,64), (49, 81), (49, 100)
-- ]

question3 = take 5 [(x, y) | x <-mySqr, y<-mySqr, x<50,y>50]
-- This will yield the first 5 pairs from mySqr such that x<50 and y>50
-- [ (1, 64), (1, 81), (1, 100), (4, 64), (4, 81)]