--Exercises from chapter 9-10 of The Craft of Functional Programming
--Soal 1
toOne xs = map (\_ -> 1) xs

length' xs = sum (toOne xs)

main = do
    let li = toOne [1,2,3]
    let li' = length' [1,2,3]
    print (li, li’)

--Soal 2
mystery xs = map (+1) (map (+1) xs)

--Soal 3
iter 0 f x = x
iter n f x = f (iter (n-1) f x)

--Soal 4
mystery' n = \n -> iter n succ

--Soal 5
sum_square :: Integer -> Integer
sum_square n = foldr (+) 0 (map (\n -> n*n) [1..n])

--Soal 6
mystery''' xs = foldr (++) [] (map sing xs)
    where
        sing x = [x]

--Soal 7
f :: Int -> Bool
f = \n -> False

--Soal 8
composeList :: [a -> a] -> a -> a
composeList [] = id
composeList (x:xs) = (x.(composeList xs))


--Soal 9
flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = g
    where g = f y x