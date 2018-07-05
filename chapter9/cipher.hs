module Cipher where
import Data.Char

toCaesar :: Int -> String -> String
toCaesar _      ""    = ""
toCaesar shift (x:xs) = 
    newLetter : (toCaesar shift xs)
    where
        newLetter = chr $ normalize $ shiftLetter
        shiftLetter = ord x + shift
        normalize c = if c > ordZ then (((-) c ordA) `mod` 26 + ordA) 
                        else c
        ordA = ord 'a'
        ordZ = ord 'z'

unCaesar :: Int -> String -> String
unCaesar _         "" = ""
unCaesar shift (x:xs) =
    newLetter : (unCaesar shift xs)
    where
        newLetter = chr $ normalize $ shiftLetter
        shiftLetter = ord x - shift
        normalize c = if c < ordA then (c + ordZ + 1) `mod` ordA + ordA
                        else c
        ordA = ord 'a'
        ordZ = ord 'z'