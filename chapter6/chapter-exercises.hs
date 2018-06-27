import qualified Data.List (sort)
-- Multiple Choice
-- Question 1
-- The EQ class makes equality tests possible

-- Question 2
-- The typeclass Ord is a subclass of Eq

-- Question 3
-- (>) :: Ord a -> a -> a -> Bool

-- Question 4
-- x = divMod 16 12 and x is a tuple

-- Question 5
-- The typeclass Integral includes Int and Integer numbers

-- Does it typecheck?
-- Question 1
data Person = Person Bool

-- printPerson :: Person -> IO()
-- -- This doesn't typecheck because Person doesn't derive from Show
-- -- or implement the typeclass
-- printPerson person = putStrLn(show person)

-- Question 2
--data Mood = Blah | Woot deriving (Show)
-- This fails to typecheck because Mood doesn't deriving or 
-- implement Eq
--settleDown x = if x == Woot then Blah else x

-- Question 3
data Mood = Blah | Woot deriving Eq
settleDown :: Mood -> Mood
settleDown x = if x == Woot then Blah else x
-- a). Accepts Moodj (Blah or Woot)
-- b). settleDown 9 will fail because 9 isn't a Mood
-- c). Blah>Woot will fail because Mood doesn't implement Ord

-- Question 4
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Show, Eq)

s1 = Sentence "dogs" "drool" -- s1 :: Object -> Sentence
s2 = Sentence "Julie" "loves" "dogs" -- s2 :: Sentence

-- Given a datatype declaration, what can we do?
data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- Question 1
-- phew = Papu "chases" True
-- This won't type check because "chases" is not of type Rocks, it's a string
-- and True is not of type Yeah, it's of type Bool

-- Question 2
-- truth = Papu (Rocks "chomskydoz") (Yeah True)
-- This type checks

-- Question 3
-- equalityForall :: Papu -> Papu -> Bool
-- equalityForall p p' = p == p'
-- This type checks because Papu has the Eq typeclass

-- Question 4
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'
-- This will not type check because Papu doesn't have an instance of Ord defined

-- Match the Types
-- Question 1
-- i :: Num a => a
-- i = 1
-- Does it work if i is defined as: i :: a?
    -- No, because 1 is a Num a, which is a constrained version of a

-- Question 2
-- f :: Float
-- f = 1.0
-- Does it work if f is defined as: f :: Num a => a?
    -- No, becuase 1.0 is a Fractional which is a constrained version of Num a

-- Question 3
-- f :: Float
-- f = 1.0
-- Does it work if f is defined as: f :: Fractional a => a
    -- Yes, because Float is a specific implementation of Fractional

-- Question 4
-- f :: Float
-- f = 1.0
-- Does it work if f is defined as: f :: RealFrac a => a
    -- Yes, because Float has an instace of RealFrac defined

-- Question 5
-- freud :: a -> a
-- freud x = x
-- Does it work if freud is defined as: freud :: Ord a => a -> a 
    -- Yes, because Ord is a tighter constraint than a

-- Question 6
-- freud' :: a -> a
-- freud' x = x
-- Does it work if freud' is defined as: freud' :: Int -> Int
    -- Yes, because Int is a tigher constraint than a

-- Question 7
-- myX = 1 :: Int
--
-- sigmund :: Int -> Int
-- sigmund x = myX
-- Does it work if sigmund is defined as: sigmund :: a -> a
    -- No, because Int is more specific than a

-- Question 8
-- myX = 1 :: Int
-- sigmund' :: Int -> Int
-- sigmund' x = myX
-- Does it work if sigmund' is defined as: sigmund' :: Num a => a -> a
    -- No, because there are other values of Num a than Int (Integer, Float, Double)

-- Question 9
jung :: Ord a => [a] -> a
jung xs = head $ Data.List.sort $ xs
-- Does it work if jung is defined as: jung :: [Int] -> Int
    -- Yes, because Int has an instance of Ord defined

-- Question 10
young :: [Char] -> Char
young xs = head $ Data.List.sort $ xs
-- Does it work if young is defined as: young :: Ord a => [a] -> a
    -- Yes, because sort only cares if Ord has been defined and Char has an Ord instance
    -- defined.

-- Question 11
mySort :: [Char] -> [Char]
mySort = Data.List.sort

signifier :: [Char] -> Char
signifier xs = head $ mySort $ xs
-- Does it work if signifier is defined as: Ord a => [a] -> a
    -- No, because mySort only works with Char and there are plenty of types that have an Ord instance that isn't Char

-- Type-Kwon-Do Two: Electric Typealoo
-- Question 1
chk :: Eq b => (a->b) -> a -> b -> Bool
chk f a b = (==) (f a) b

-- Question 2
arith :: Num b => (a->b) -> Integer -> a -> b
arith f _ a = f a
