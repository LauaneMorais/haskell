sinal :: Int -> Int
sinal x
 | x > 0 = 1
 | x < 0 = -1
 | otherwise = 0

numero :: Int -> String
numero x
 | x > 0 = "Positivo "  ++ show x
 | x < 0 = "Negativo " ++ show (-x)
 |otherwise = "Nulo"

situacao :: Float -> Float -> Float -> String
situacao x y z
 | media >= 7 = "Aprovado com media " ++ show media
 | media < 7 || media >= 5 = "Vai pra a final com media " ++ show media
 | media < 5 = "Reprovado com media " ++ show media
 where
 media = (x + y + z) / 3

c1:: Bool -> Bool -> Bool
c1 True False = True
c1 False True = True
c1 _ _ = False

c2 :: Bool -> Bool -> Bool
c2 x y = if x /= y then True else False

c3 :: Bool -> Bool -> Bool
c3 x y = (x || y) && not (x && y)

c4 :: Bool -> Bool -> Bool
c4 x y = not (x == y)

c5 :: Bool -> Bool -> Bool
c5 x y = (x /= y)


