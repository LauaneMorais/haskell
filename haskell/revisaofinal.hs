avaliaSerieCompreensao :: Int -> Double
avaliaSerieCompreensao n = sum [2^i / fromIntegral (fatorial i) | i <- [0..n-1]]
    where
        fatorial :: Int -> Int
        fatorial n = product [1..n] 

avaliaSerieRecursao :: Int -> Double
avaliaSerieRecursao 0 = 0.0
avaliaSerieRecursao n = avaliaSerieRecursaoAux (n-1)
    where
        avaliaSerieRecursaoAux :: Int -> Double
        avaliaSerieRecursaoAux 0 = 0.0
        avaliaSerieRecursaoAux i = fromIntegral (potencia2 i) / fromIntegral (fatorial i) + avaliaSerieRecursaoAux (i - 1)

potencia2 :: Int -> Int 
potencia2 0 = 1
potencia2 n = 2 * potencia2 (n-1)

fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n-1)

termosDiferentes :: [Int] -> [Int] -> [Int]
termosDiferentes [] _ = []
termosDiferentes (x:xs) [] = (x:xs)
termosDiferentes (x:xs) (y:ys) 
    | elem x (y:ys) = termosDiferentes xs (y:ys)
    | otherwise = x : termosDiferentes xs (y:ys)