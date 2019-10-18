maxTiga :: (Integral a) => a -> a -> a -> a
maxTiga x y z = x `max` y `max` z

quicksort [] = []
quicksort (x:xs) = quicksort lesser ++ [x] ++ quicksort larger
    where
        lesser = [i | i <- xs, i<=x]
        larger = [j | j <- xs, j>x]