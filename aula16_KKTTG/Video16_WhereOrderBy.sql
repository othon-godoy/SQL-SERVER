-- BASIC SQL SYNTAX SO FAR:

SELECT <COLUMNS>
FROM <TABLES>

-- WE ALSO SAW HOW TO USE ALIASES

SELECT GETDATE() AS DATE
SELECT GETDATE() AS 'DATE'
SELECT GETDATE() DATE

-- WE CAN CREATE NEW CALCULATED COLUMNS 
-- EXAMPLES:

SELECT 1 + 1 AS SUM

SELECT NomeProduto
      ,PrcProducto as Original
	  ,PrcProducto+10 as PlusTen
	  ,PrcProducto+(PrcProducto*0.1) as TenPercentIncrease
FROM PRODUTOS

-- THERE ARE MANY ARITHMENTIC OPERATORS
-- CHECK DE DOCUMENTATION

-- STRING CONCATENATION
SELECT NomeTransportadora + ' - '  + MeioTransporte AS Info
FROM TRANSPORTADORAS

-- IF YOU HAVE DUPLICATED DATA, USE THE DISTINCT KEYWORD

SELECT NomeProduto
      ,UMProduto
FROM PRODUTOS

SELECT UMProduto
FROM PRODUTOS

SELECT DISTINCT UMProduto
FROM PRODUTOS

-- TO SEE THE TABLE'S STRUCTURE
EXEC SP_HELP PRODUTOS

-- NOW LET'S SEE HOW TO FILTER THE RESULTS
-- SYNTAX:

SELECT <columns> 
FROM <tables> 
WHERE <condition>

-- <conditions> is like COLUMN <OPERATOR> VALUE
-- EXAMPLES:

SELECT *
FROM CATEGORIAS

SELECT *
FROM PRODUTOS
WHERE IdCategoria = 3

SELECT *
FROM CLIENTES
WHERE NomeCliente = 'Editora Cient�fica'

SELECT *
FROM CLIENTES
WHERE  'Editora Cient�fica' = NomeCliente

SELECT *
FROM PEDIDOS
WHERE DataPedido = '2014-07-10 10:50:04.417' 

-- THE MAIN OPERATORS

=
< 
> 
<= 
>=
<> OR !=  OR ^=

SELECT *
FROM PRODUTOS
WHERE PrcProducto >= 10.0

-- WHEN WORKING WITH RANGES USE THE 
-- BETWEEN ... AND ... OPERATOR

SELECT *
FROM PRODUTOS
WHERE PrcProducto BETWEEN 10.0 AND 20.0

-- YOU CAN ALSO USE A LIST OF VALUES
-- WITH THE IN() OPERADOR

SELECT *
FROM PRODUTOS
WHERE PrcProducto IN(16.0,18.0,20.0)

-- WHEN WORKING WITH STRINGS YOU CAN USE THE
-- LIKE OPERATOR


SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'King'


SELECT *
FROM CLIENTES
WHERE NomeCliente = 'Dona Maria'

SELECT *
FROM CLIENTES
WHERE NomeCliente like 'Dona Maria'

-- YOU CAN USE THE % AND THE _ AS A WILD CARDS:

--	% = ANY NUMBER OF CHARACTER AND ANY CHARACTER
--  _ = JUST ONE CHARACTER THAT CAN BE ANY CHARACTER

SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE 'E%'

SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE '%a'

SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE '_m%'


SELECT *
FROM CLIENTES
WHERE NomeCliente LIKE '%a%a%'

-- YOU CAN COMBINE MANY FILTER EXPRESSIONS USING THE
-- LOGICAL OPERATORS

-- AND: ALL THE CONDITIONS MUST BE TRUE TO GET THE ROWS
-- OR: IF ANY O THE CONDITIONS IS TRUE  YOU GET THE ROWS
-- NOT: IF THE CONDITION IS NOT TRUE YOU GET THE ROWS

-- EXAMPLES:

SELECT NomeProduto
     , PrcProducto
FROM PRODUTOS
WHERE     NomeProduto LIKE '%a'
      AND PrcProducto > 20.0

SELECT NomeProduto
     , PrcProducto
FROM PRODUTOS
WHERE NomeProduto LIKE '%a'
      OR PrcProducto > 20.0

SELECT NomeProduto
     , PrcProducto
FROM PRODUTOS
WHERE NomeProduto NOT LIKE '%a'

-- FINALLY, YOU CAN SORT THE RESULT USING THE ORDER BY CLAUSE
-- SYNTAX:

SELECT <columns> 
FROM <table> 
WHERE <condition> 
ORDER BY <columns>

-- JUST USE THE NAME, ALIAS OR ORDINAL POSITION OF THE COLUM

SELECT *
FROM CLIENTES
ORDER BY NomeCliente

SELECT *
FROM CLIENTES
ORDER BY 1

SELECT NomeCliente
      ,EndCliente as Endereco
FROM CLIENTES
ORDER BY Endereco

-- BY DEFAULT THE DESCENDING ORDER IS USED
-- YOU CAN FORCE THE ORDER FOR EACH COLUMN WITH ASC OR DESC

SELECT *
FROM CLIENTES
ORDER BY NomeCliente DESC

SELECT *
FROM CLIENTES
ORDER BY NomeCliente ASC


SELECT IdCategoria
      , NomeProduto
FROM PRODUTOS
ORDER BY IdCategoria, NomeProduto

SELECT IdCategoria
      , NomeProduto
FROM PRODUTOS
ORDER BY IdCategoria, NomeProduto DESC


