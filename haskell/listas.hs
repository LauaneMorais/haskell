dobrarLista :: [Int] -> [Int]
dobrarLista [] = []
dobrarLista (x:xs) = 2 * x : dobrarLista xs

listaPositiva :: [Int] -> Bool
listaPositiva [] = True
listaPositiva (x:xs) = x >= 0 && listaPositiva xs

filtraImpares :: [Int] -> [Int]
filtraImpares [] = []
filtraImpares (x:xs) 
    | mod x 2 /= 0 = x :filtraImpares xs
    | otherwise      = filtraImpares xs

triplicaLista :: [Int] -> [Int]
triplicaLista [] = []
triplicaLista (x:xs) = 3 * x : triplicaLista xs

triplicaPares :: [Int] -> [Int]
triplicaPares [] = []
triplicaPares (x:xs) 
    | mod x 2 == 0 = 3 * x : triplicaPares xs
    | mod x 2 /= 0 = x : triplicaPares xs
    | otherwise    = triplicaPares xs

eliminaPrimeiroElemento :: Int -> [Int] -> [Int]
eliminaPrimeiroElemento n [] = []
eliminaPrimeiroElemento n (x:xs)
    | n == x = xs
    | otherwise = x : eliminaPrimeiroElemento n xs


eliminaElemento :: Int -> [Int] -> [Int]
eliminaElemento n [] = []
eliminaElemento n (x:xs) 
    | n == x = eliminaElemento n xs
    | otherwise = x : eliminaElemento n xs

inverteLista :: [Int] -> [Int]
inverteLista [] = []
inverteLista (x:xs) = inverteLista xs ++ [x]