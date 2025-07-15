type Codigo = Int       -- o código de um produto
type Compras = [Codigo] -- produtos comprados (um carrinho de compras)

type Preco = Int -- preço em centavos
type Nome = String -- nome do produto
type BancoProdutos = [(Codigo, Nome, Preco)]

-- Um exemplo de lista de compras
compras :: Compras
compras = [1234, 4719, 3814, 1112, 1113, 1234]

-- Um exemplo de banco de dados dos produtos
produtos :: BancoProdutos
produtos = [ (4719, "Fish Fingers", 121),
             (5643, "Nappies", 1010),
             (3814, "Orange Jelly", 56),
             (1111, "Hula Hoops", 21),
             (1112, "Hula Hoops (Giant)", 133),
             (1234, "Dry Sherry, 1lt", 540) ]

codigorecebido concat[codigo ++ "\n" | codigo <- produtos, codigo == codigorecebido]