diferentes :: Double -> Double -> Double -> Bool
diferentes x y z 
 | x /= y && y /= z && x /= z = True
 | otherwise                  = False



conceito :: Int -> Int -> Char
conceito quantLivros quantAlunos
 | 8 >= r                =  'A'
 | 12 >= r && r >= 9     =  'B'
 | 18 >= r && r >= 13    =  'C'
 | 18 < r                =  'D'
 where 
    r = div quantAlunos quantLivros



area :: Double -> Double -> Double -> Double
area x y z 
 | x + y > z &&
   y + z > x &&
   x + z > y    = sqrt (s * (s - x) * (s - y) * (s - z)) 
 | otherwise    = 0
 where
    s = (x + y + z)/2



bissexto :: Int -> Bool
bissexto a 
 | mod a 4 == 0 && mod a 100 /= 0 || mod a 400 == 0 = True
 | otherwise                                        = False 



valorTotal :: Int -> Int -> Double
valorTotal quantDias quilometragem
 | quilometragem <= 100 * quantDias = 90 * quantDias
 | otherwise                        = 90 * quantDias + (mod quilometragem 100)