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

maxDivisor :: Int -> Int -> Int
maxDivisor x y = maximum [d | d <- numberDivisors x, elem d (numberDivisors y)]
