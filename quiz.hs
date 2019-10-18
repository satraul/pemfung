maxTiga :: (Integral a) => a -> a -> a -> a
maxTiga x y z = x `max` y `max` z

quicksort [] = []
quicksort (x:xs) = quicksort lesser ++ [x] ++ quicksort larger
    where
        lesser = [i | i <- xs, i<=x]
        larger = [j | j <- xs, j>x]

jumlahList (xs) = foldl (+) 0 xs

minus (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys 
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs

primesTo m = eratos [2..m]
    where
    eratos []     = []
    eratos (p:xs) = p : eratos (xs `minus` [p, p+p..])

flip :: (a -> b -> c) -> b -> a -> c
flip f = g
    where
    g x y = f y x