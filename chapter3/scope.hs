-- Question 1
-- The following has been entered into the repl
-- let x = 5
-- let y = 7
-- let z = x * y
-- Yes, y is in the scope of z

-- Question 2
-- The following has been entered into the repl
-- let f = 3
-- let g = 6 * f * h
-- No, h is not in the scope of g since it hasn't been defined

-- Question 3
-- The following has been entered into a source file
-- area d = pi * (r * r)
-- r = d / 2
-- No, r cannot be defined because it needs d, but only area has access to d

-- Question 4
-- The following has been entered into a source file
-- area d = pi * (r * r)
--  where r = d / 2
-- Yes, r and d are in scope for area

