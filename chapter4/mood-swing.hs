data Mood = Blah | Woot deriving Show

-- Question 1
-- The type constructor is called Mood

-- Question 2
-- A function that takes in a Mood could either
-- be a Blah or a Woot

-- Question 3
-- The signature for negating a Mood
-- should be (Mood -> Mood), not (Mood -> Woot)

-- Question 4
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah