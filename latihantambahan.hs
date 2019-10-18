--Latihan satu
mapList :: (a -> b) -> [a] -> [b]  
mapList _ [] = []  
mapList f (x:xs) = f x : map' f xs  

data Tree a = Leaf a | Branch (Tree a) (Tree a)

foldTree :: (a -> b -> b) -> b -> Tree a -> b
foldTree f init (Leaf x)         = f x init
foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1
foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1

-- Latihan dua