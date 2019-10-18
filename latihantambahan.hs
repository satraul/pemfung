data Expr = C Integer 
          | Add Expr Expr 
          deriving (Eq,Show)

--Latihan satu
mapList :: (Expr -> Expr) -> [Expr] -> [Expr]
mapList _ [] = []  
mapList f (x:xs) = f x : mapList f xs

-- > mapList (\x -> Add x (C 1)) [(C 1), (C 2), (C 3)]

-- data Tree a = Leaf a | Branch (Tree a) (Tree a)

-- foldTree :: (a -> b -> b) -> b -> Tree a -> b
-- foldTree f init (Leaf x)  = f x init
-- foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1
-- foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1



-- Latihan dua
