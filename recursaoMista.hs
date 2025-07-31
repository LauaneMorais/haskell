par :: Int -> Bool
par 0 = True
par n = impar (n - 1)

impar :: Int -> Bool
impar 0 = False
impar n = par (n - 1)

palindromo :: String -> Bool
palindromo [] = True
palindromo [x] = True
palindromo xs = head xs == last xs && palindromo (init(tail xs))

quickSort :: [a] -> [a]
quickSort []  = []
quickSort [x] = [x]
quickSort (x:xs) = 
    quickSort [y | y <- xs, y <= x] ++
    x : quickSort [y | y <- xs, y > x]
                
divMod :: Int -> Int -> (Int, Int)
divMod a b 
    | a < b = (0, a)
    | b == 0 = error "Divisão indefinida"
    | otherwise = (q + 1, r)
    where
        (q, r) = divMod (a - b) b 

intervaloDeEntaoAte :: Int -> Int -> Int -> [Int]
intervaloDeEntaoAte a b c
    | a > c = []
    | otherwise = [a] ++ [a + (b - a)] 

        

{-
div a b 
    | a < b = 0
    | otherwise = 1 + div (a - b) b

mod a b
    | a < b = a
    | otherwise = mod (a - b) b