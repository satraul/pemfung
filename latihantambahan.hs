data Expr = C Float | Expr :+ Expr | Expr :- Expr
          | Expr :* Expr | Expr :/ Expr
          | V String
          | Let String Expr Expr
          deriving Show

--Latihan satu
mapList :: (Expr -> Float) -> [Expr] -> [Float]
mapList _ [] = []  
mapList f (x:xs) = f x : mapList f xs

evaluate' :: Expr -> Float
evaluate' (C x) = x
evaluate' (e1 :+ e2) = evaluate' e1 + evaluate' e2
evaluate' (e1 :- e2) = evaluate' e1 - evaluate' e2
evaluate' (e1 :* e2) = evaluate' e1 * evaluate' e2
evaluate' (e1 :/ e2) = evaluate' e1 / evaluate' e2

-- > mapList (\x -> evaluate' ((C 1) :+ (C 2)) [(C 1), (C 2), (C 3)]

-- foldTree :: (Expr a b c) => (a -> b -> c) -> (Expr Branch a b c) -> a

-- data Tree a = Leaf a | Branch (Tree a) (Tree a)

-- foldTree :: (a -> b -> b) -> b -> Tree a -> b
-- foldTree f init (Leaf x)  = f x init
-- foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1
-- foldTree f init (Branch x t1 t2) = foldTree f (f x (foldTree f init t2)) t1

-- Latihan dua
