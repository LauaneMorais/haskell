
myMod :: Int -> Int -> Int
myMod a b 
    | a < b     = a 
    | a == b    = 0 
    | otherwise = myMod (a - b) b


myTake :: Int -> [a] -> [a]
myTake n _ 
    | n <= 0    = []
myTake n []     = []
myTake n (x:xs) = x : myTake (n-1) xs 


myDrop :: Int -> [a] -> [a]
myDrop n xs   
    | n <= 0    = xs
myDrop n []     = []
myDrop n (x:xs) = myDrop (n - 1) xs


myLast :: [a] -> a
myLast [x]      = x
myLast []       = error "Não há elementos na lista"
myLast (x : xs) = myLast xs


myInit :: [a] -> [a]
myInit [x]    = []
myInit []     = error "Não há elementos na lista"
myInit (x:xs) = [x] ++ myInit xs


intervaloDeAte :: Int -> Int -> [Int]
intervaloDeAte m n
    | m > n     = []
    | otherwise = m : intervaloDeAte (m + 1) n


filtraPosicoesPares :: [a] -> [a]
filtraPosicoesPares []      = []
filtraPosicoesPares (x : xs) = x : filtraPosicoesPares (drop 1 xs)


filtraPosicoesImpares :: [a] -> [a]
filtraPosicoesImpares []      = []
filtraPosicoesImpares (x : y : xs) = y : filtraPosicoesImpares (xs) 


