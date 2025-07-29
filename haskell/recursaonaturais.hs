fatorial :: Int -> Int
fatorial (0) = 1
fatorial (n) = n * fatorial (n-1)

multiplicar :: Int -> Int -> Int
multiplicar x (0) = 0
multiplicar x n 
 | n > 0 = x + multiplicar x (n-1)
 | n < 0 = - (multiplicar x (-n))

potenciar :: Int -> Int -> Int
potenciar numero (0) = 1
potenciar numero (potencia) = numero * potenciar numero (potencia-1)

somaDosCubos :: Int -> Int
somaDosCubos (0) = 0
somaDosCubos n = n ^ 3 + somaDosCubos (n - 1) 

doisElevadoA :: Int -> Int
doisElevadoA (0) = 1
doisElevadoA n = 2 ^ n + doisElevadoA (n - 1)

{- raizQuadrada :: Int -> Int
raizQuadrada  -}