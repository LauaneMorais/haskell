numberList = [ x | x <- [1..100], mod x 5 /= 0 ]

oddTriples :: [Int] -> [Int]
oddTriples nl = [ x * 3 | x <- nl, odd x ]

evenCounter :: [Int] -> Int
evenCounter nl = sum [ 1 | x <- nl, even x ]
-- length [ x | x <- xs, even x ]

numberDivisors :: Int -> [Int]
numberDivisors n = [ d | d <- [1..n], mod n d == 0 ]

primeNumCheck :: Int -> Bool
primeNumCheck n = numberDivisors n == [1, n]

{- maxDivisor :: Int -> Int -> Maybe Int
maxDivisor x y 
 | x > 0 && y > 0 = Just (maximum [d | d <- numberDivisors x, elem d (numberDivisors y)])
 | otherwise      = Nothing -}

mdc :: Int -> Int -> String
mdc x y 
 | x > 0 && y > 0 = "MDC: " ++ show (maximum [d | d <- numberDivisors x, elem d (numberDivisors y)])
 | otherwise      = "Nao existe o MDC entre " ++ show x ++ " e " ++ show y

mmc :: Int -> Int -> String
mmc x y  
    | x > 0 && y > 0 = "MMC: " ++ show (div (x * y) mdcValue)
    | otherwise      = "Não há MMC entre " ++ show x ++ " e " ++ show y
 where
  mdcValue = maximum [d | d <- numberDivisors x, elem d (numberDivisors y)]

onSeparateLines :: [String] -> String
onSeparateLines xs = concat [x ++ "\n" | x <- xs] 

functionReplicate :: Int -> a -> [a]
functionReplicate x c = [c | _ <- [1..x]]

myRepeat :: a -> [a]
myRepeat c = [c | _ <- [1..]]