--Exercises from learnyouahaskell.com

--Texas ranges

ra = [1..20]
lols = take 12 (cycle "LOL")

--List comprehension

fooBars xs = [ if x < 10 then "FOO" else "BAR" | x <- xs, odd x]

--Tuples

tuple' = fst ("Keluar", False)
tuple'' = snd (False, "Keluar")
zip' = zip [1,2,3,4,5] [5,5,5,5,5]
zip'' = zip [1..] ["one", "two", "three", "four", "five"]

--Types
--semua operator di haskell (==, ++, +, -) merupakan fungsi

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r
