type Person = String
type Book = String

type Database = [(Person, Book)] -- Empréstimos de livros a pessoas

exampleBase ::Database
exampleBase = [ ("Alice","Tintin"), ("Anna","LittleWomen"),
                ("Alice" ,"Asterix"), ("Rory","Tintin"), ("Gyovani", "Bobbie Goods") ]
                
-- Dada uma pessoa, queremos saber que livros estão emprestados a ela.
books :: Database -> Person -> [Book]
books bd p = [ b | (q, b) <- bd, q == p ]

-- 1) Dado um livro, queremos encontrar as pessoas que estão com o livro.
emprestadosA :: Database -> Book -> [Person]
emprestadosA bancoDeDados livroEmprestado = [ pessoas | (pessoas, livros) <- bancoDeDados, livroEmprestado == livros]

-- 2) Dado um livro, queremos saber se ele está emprestado a alguém (não importa quem).
emprestado :: Database -> Book -> Bool
emprestado bancoDeDados livroEmprestado = not (null [() | (_, livro) <- bancoDeDados, livro == livroEmprestado])

-- 3) Dada uma pessoa, queremos saber quantos livros estão com ela
numeroEmprestimos :: Database -> Person -> Int
numeroEmprestimos bancoDeDados pessoaEscolhida = sum[1 | (pessoa, _) <- bancoDeDados, pessoa == pessoaEscolhida]

-- 4) Fazer emprestimo
fazerEmprestimo :: Database -> Person -> Book -> Database
fazerEmprestimo bancoDeDados pessoaNova livroNovo = (pessoaNova, livroNovo) : bancoDeDados

-- 5) Retornar emprestimo
retornarEmprestimo :: Database -> Person -> Book -> Database
retornarEmprestimo bancoDeDados pessoaEscolhida livroEmprestado = [(pessoa, livro) | (pessoa, livro) <- bancoDeDados, (pessoa, livro) /= (pessoaEscolhida, livroEmprestado)]
