-- SETANDO BANCO DE DADOS
USE dbModelDatabase
GO

-- VISUALIZANDO TODAS OS PRODUTOS DA CATEGORIA 3
SELECT *
FROM PRODUTOS
WHERE IdCategoria = 3
GO

-- VISUALIZANDO TODOS OS PRODUTOS COM PREÇO MAIOR QUE 10.0
SELECT *
FROM PRODUTOS
WHERE PrcProduto >= 10.0
GO

-- USANDO O BETWEEN PARA TRABALHAR COM RANGES
SELECT *
FROM PRODUTOS
WHERE PrcProduto BETWEEN 10.0 AND 20.0
GO

-- USANDO O IN PARA TRABALHAR COM UMA LISTA DE VALORES
SELECT *
FROM PRODUTOS
WHERE PrcProduto IN(16.0,18.0,20.0)
GO

-- USANDO O LIKE PARA REALIZAR BUSCAS COM STRINGS
SELECT *
FROM CLIENTES
WHERE NomeCliente like 'Dona Maria'
GO

-- USANDO % OU _ COMO CORINGAS
-- % PARA QUALQUER CARACTERE OU QUANTIDADE DE CARACTERES
-- _ PARA QUALQUER CARACTERE MAS APENAS UM CARACTERE

-- VISUALIZANDO TODOS OS CLIENTES CUJO NOME COMEÇA COM A LETRA E
SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE 'E%'
GO

-- VISUALIZANDO TODOS OS CLIENTES CUJO NOME TERMINA COM A LETRA A
SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE '%a'
GO

-- VISUALIZANDO O NOME E O PREÇO DE TODOS OS PRODUTOS CUJO NOME TERMINA COM A LETRA A E O PREÇO É MAIOR QUE 20.0
SELECT NomeProduto
     , PrcProduto
FROM PRODUTOS
WHERE     NomeProduto LIKE '%a'
      AND PrcProduto > 20.0
GO

-- VISUALIZANDO O NOME E O PREÇO DE TODOS OS PRODUTOS CUJO NOME TERMINA COM A LETRA A OU O PREÇO É MAIOR QUE 20.0
SELECT NomeProduto
     , PrcProduto
FROM PRODUTOS
WHERE NomeProduto LIKE '%a'
      OR PrcProduto > 20.0
GO

-- VISUALIZANDO O NOME E O PREÇO DE TODOS OS PRODUTOS CUJO NOME NÃO TERMINA COM A LETRA A
SELECT NomeProduto
     , PrcProduto
FROM PRODUTOS
WHERE NomeProduto NOT LIKE '%a'
GO

-- USANDO CLÁUSULA ORDER BY PARA ORDENAR CLIENTES PELO NOME 
SELECT *
FROM CLIENTES
ORDER BY NomeCliente
GO

-- POR PADRÃO A ORDENAÇÃO OCORRE DE FORMA CRESCENTE, MAS É POSSÍVEL FORÇAR A ORDENAÇÃO
SELECT *
FROM CLIENTES
ORDER BY NomeCliente DESC
GO

-- ORDENANDO DADOS DE FORMA CRESCENTE PELO IDCATEGORIA E DE FORMA DECRESCENTE PELO NOME DO PRODUTO
SELECT IdCategoria
      , NomeProduto
FROM PRODUTOS
ORDER BY IdCategoria, NomeProduto DESC
GO
