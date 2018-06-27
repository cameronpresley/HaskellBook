k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

-- Question 1a
-- The type of k is k :: (a,b) -> a

-- Question 1b
-- The type of k2 is k2 :: [Char]. It's not the same type as k1 or k3

-- Question 1c
-- k1 and k3 will each return 3 as the result

-- Question 2
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))