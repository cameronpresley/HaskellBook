-- Multiple Chocie
-- Question 1
-- [a] is a list whose elements are all of some type a

-- Question 2
-- A function of type [[a]] -> [a] could take a list of strings as an argument

-- Question 3
-- A function of type [a] -> Int -> a returns one element of type a from a list

-- Question 4
-- A function of type (a, b) -> a takes a tuple argument and returns the first value

-- Type variable or specifiy type constructor
-- Question 2
-- f :: zed -> Zed -> Blah
--      fully -> Concrete -> Concrete

-- Question 3
-- f:: Enum b => a -> b -> c
--     (Constrained) (fully) (fully)

-- Question 4
-- f :: f -> g -> C
--      (fully) (fully) (Concrete)

-- Write a type signature
-- Question 1
functionH :: [a] -> a
functionH (x:_) = x

-- Question 2
functionC :: (Ord a) => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- Question 3
functionS :: (a,b) -> b
functionS (x, y) = y

-- Given a type, write a function
-- Question 1
i :: a -> a
i a = a

-- Question 2
c :: a -> b -> a
c a b = a

-- Question 3
c'' :: b -> a -> b
c'' b a = b
-- Yes, this is the same as c above

-- Question 4
c' :: a -> b -> b
c' a b = b

-- Question 5
r :: [a] -> [a]
r a = reverse a

-- Question 6
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB $ a

-- Question 7
a :: (a->c) -> a -> a
a _ x = x

-- Question 8
a' :: (a->b) -> a -> b
a' f x = f x

-- Type Kwon Do
-- Question 1
-- f :: Int -> String
-- f = undefined
-- g :: String -> Char
-- g = undefined
-- h :: Int -> Char
-- h a = (g . f) a

-- Question 2
-- data A
-- data B
-- data C
-- q :: A -> B
-- q = undefined
-- w :: B -> C
-- w = undefined
-- e :: A -> C
-- e a = (w . q) a

-- Question 3
-- data X
-- data Y
-- data Z
-- xz :: X -> Z
-- xz = undefined
-- yz :: Y -> Z
-- yz = undefined
-- xform : (X, Y) -> (Z, Z)
-- xform (x, y) = ((xz x), (yz y))

-- Question 4
-- munge :: (x -> y)
--       -> (y -> (w, z))
--       -> x
--       -> w
-- munge f g x =
-- comp x where comp = fst . g . f