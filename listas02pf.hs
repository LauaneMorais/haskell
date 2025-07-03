{- 
Somente usando funções predefinidas e/ou ranges, defina funções para
Retornar o segundo elemento de uma lista.
Calcular quantos dígitos decimais têm um número.
Retornar o i-ésimo elemento de uma lista.
Calcular a média aritmética de uma lista de números.
Ver se um número Integer é palíndromo.
Verificar se uma lista é formada apenas pela repetição de um único valor.
Dado um inteiro n positivo, calcular o produto dos números ímpares de 1 até n.
Calcular o número de combinações de m elementos pegos de um universo de n elementos. A fórmula das combinações é n! / m!(m-n)!.
Tente que sua função realize o menor número de multiplicações.
Dadas duas listas, uma do tipo String e outra do tipo Int, construa uma lista com pares do tipo (String, Int) de tal forma que cada elemento da primeira lista forme par com o correspondente elemento da segunda lista. Assim, por exemplo, para as listas ["Maria", "Joana", "Pedro"] e [18, 20, 17] a lista final deverá ser [("Maria", 18), ("Joana", 20), ("Pedro", 17)].
Dada uma lista de (Estados, Capitais), construa um par com duas listas, onde o primeiro elemento é a lista de estados e o segundo elemento a de capitais.
-}

segundo :: [Int] -> Int
segundo ns = head(tail ns)

palindromo :: [Int] -> Bool
palindromo ns
 |ns == reverse(ns) = True
 |otherwise         = False

nroDigitos :: Int -> Int
nroDigitos n 
 | n >= 0   = length (show n)
 |otherwise = length (show n) - 1