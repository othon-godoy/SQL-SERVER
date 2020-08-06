-- SETANDO BANCO DE DADOS
USE dbModelDatabase
GO

-- INSERINDO REGISTROS NA TABELA CATEGORIAS
INSERT INTO CATEGORIAS VALUES(1,'Material de escritXrio',0,1)
INSERT INTO CATEGORIAS VALUES(2,'Material escolar',0,1)
INSERT INTO CATEGORIAS VALUES(3,'Livros',0,1)
INSERT INTO CATEGORIAS VALUES(4,'Presentes',0,0)
INSERT INTO CATEGORIAS VALUES(5,'Material TXcnico',0,1)
GO

-- INSERINDO REGISTROS NA TABELA CLIENTES
INSERT INTO CLIENTES VALUES(100,'Empresa PapelTudo SA','Rua do Papel s/n')
INSERT INTO CLIENTES VALUES(101,'Empresa Livros&Livros LTDA','Rua dos leitores 500')
INSERT INTO CLIENTES VALUES(102,'Dona Maria','Rua do Curtume, 3 - fundos')
INSERT INTO CLIENTES VALUES(103,'Editora CientXfica','PraXa Ramos nro 0')
INSERT INTO CLIENTES VALUES(104,'FundaXXo Bem Estar','Largo da Pampulha 200, primeiro andar')
INSERT INTO CLIENTES VALUES(105,'FXbrica de calXados PisaBem','Fazenda Santa Maria, nro 1')
INSERT INTO CLIENTES VALUES(106,'Loja de presentes Fique Linda','Shopping Plaza Oeste, piso tXrreo, box 14')
INSERT INTO CLIENTES VALUES(107,'Distribuidora de Bebidas Tomo Todas','RUa do Alambique 51')
INSERT INTO CLIENTES VALUES(108,'ConcessionXria Qualquer NegXcio','Estada da bota, KM 25')
INSERT INTO CLIENTES VALUES(109,'Hospital SXConvXnio','PraXa das Xrvores 1200')
INSERT INTO CLIENTES VALUES(110,'Bar do ZX','Esquina da 52 com a Brodway, nro 69')
GO

-- INSERINDO REGISTROS NA TABELA VENDEDORES
INSERT INTO VENDEDORES VALUES(15,NULL,'GERENTE REGIONAL - SR. AndrX',25,10)
INSERT INTO VENDEDORES VALUES(205,15,'Eduardo Gomes',50,2.5)
INSERT INTO VENDEDORES VALUES(300,15,'Rodrigo Silva',55,1.0)
INSERT INTO VENDEDORES VALUES(25,NULL,'GERENTE DA MATRIZ - SR. Nelson',0,25)
INSERT INTO VENDEDORES VALUES(35,25,'COORDENADOR DE VENDAS - SR. Eduardo',15,7.5)
INSERT INTO VENDEDORES VALUES(45,35,'Marcelo Rodrigues',50,2.5)
GO

-- INSERINDO REGISTROS NA TABELA TRANSPORTADORAS
INSERT INTO TRANSPORTADORAS VALUES(1,'VOE BEM','AXreo',25.00,10)
INSERT INTO TRANSPORTADORAS VALUES(2,'Nautilus','MarXtimo',20.00,25)
INSERT INTO TRANSPORTADORAS VALUES(3,'Queima ChXo','ROdoviXrio',12.50,5)
GO

-- INSERINDO REGISTROS NA TABELA PRODUTOS
INSERT INTO PRODUTOS VALUES(1,'Caixa de clips','cx',1,10.25)
INSERT INTO PRODUTOS VALUES(2,'Estojo de graffiti','es',1,8.50)
INSERT INTO PRODUTOS VALUES(3,'Furador de papel','un',1,5.00)
INSERT INTO PRODUTOS VALUES(4,'Resma de papel sulfite','rs',1,50.00)
INSERT INTO PRODUTOS VALUES(5,'Bloco de notas tipo post-it','bl',1,2.50)
INSERT INTO PRODUTOS VALUES(6,'Jogo de lXpis e caneta','jo',1,14.20)
INSERT INTO PRODUTOS VALUES(7,'Resma de papel almaXo','rs',1,50.00)
INSERT INTO PRODUTOS VALUES(8,'Bloco de recibo','bl',1,23.50)
INSERT INTO PRODUTOS VALUES(9,'Caixa de elXsticos','cx',1,5.00)
INSERT INTO PRODUTOS VALUES(10,'Abridor de correspondXncia','un',1,8.30)
GO

INSERT INTO PRODUTOS VALUES(11,'MatemXtica elementar','un',3,80.00)
INSERT INTO PRODUTOS VALUES(12,'O caXador de quadrados','un',3,55.99)
INSERT INTO PRODUTOS VALUES(13,'InformXtica para iniciantes','un',3,25.00)
INSERT INTO PRODUTOS VALUES(14,'Aprenda a programar Delphi em 24 horas','un',3,15.50)
INSERT INTO PRODUTOS VALUES(15,'Guia de referXncia do carpinteiro','un',3,33.33)
INSERT INTO PRODUTOS VALUES(16,'Os 1000 lugares que vocX deve conhecer','un',3,90)
INSERT INTO PRODUTOS VALUES(17,'HistXria conteporrXnea - de quinta a oitava sXrie','un',3,35.25)
INSERT INTO PRODUTOS VALUES(18,'Quem mexeu no meu bauru ?','un',3,19.90)
INSERT INTO PRODUTOS VALUES(19,'A arte da paz','un',3,22.50)
INSERT INTO PRODUTOS VALUES(20,'EnciclopXdia da anatomia humana','un',3,60.87)
INSERT INTO PRODUTOS VALUES(21,'Tudo sobre o budismo','un',3,45.41)
GO

INSERT INTO PRODUTOS VALUES(22,'Estojo de maquilagem','es',4,88.70)
INSERT INTO PRODUTOS VALUES(23,'CartXo de natal','un',4,3.00)
INSERT INTO PRODUTOS VALUES(24,'Caixa para embrulhar presentes','cx',4,8.59)
INSERT INTO PRODUTOS VALUES(25,'Carteira de couro preto','un',4,10.29)
INSERT INTO PRODUTOS VALUES(26,'LXpis de olho','un',4,2.33)
INSERT INTO PRODUTOS VALUES(27,'Caixa de esmalte colorido','cx',4,60.00)
INSERT INTO PRODUTOS VALUES(28,'Bonequinho da profissXo','un',4,25.40)
INSERT INTO PRODUTOS VALUES(29,'Cortador de charuto','un',4,40)
INSERT INTO PRODUTOS VALUES(30,'Porta retrato','un',4,35.00)
INSERT INTO PRODUTOS VALUES(31,'Cofrinho de moedas','un',4,38.10)
INSERT INTO PRODUTOS VALUES(32,'LuminXria flexXvel','un',4,50.00)
GO

INSERT INTO PRODUTOS VALUES(33,'Folha de papel vegetal para croqui','fl',5,2.50)
INSERT INTO PRODUTOS VALUES(34,'RXgua de desenho no formato T','fl',5,22.20)
INSERT INTO PRODUTOS VALUES(35,'Pasta de secretariado','un',5,33.80)
INSERT INTO PRODUTOS VALUES(36,'Caixa de arquivo morto','cx',5,20)
INSERT INTO PRODUTOS VALUES(37,'CD regravXvel','un',5,5)
INSERT INTO PRODUTOS VALUES(38,'Cabo de impressora','un',5,16.00)
INSERT INTO PRODUTOS VALUES(39,'Mapa mXndi','un',5,18.00)
INSERT INTO PRODUTOS VALUES(40,'Prancheta de desenho tXcnico','un',5,100.00)
INSERT INTO PRODUTOS VALUES(41,'Avental Branco','un',5,70.00)
INSERT INTO PRODUTOS VALUES(42,'Bisnaga de tinta plXstica','bi',5,25.00)
INSERT INTO PRODUTOS VALUES(43,'Pincel tipo liso','un',5,12.00)
GO

INSERT INTO PRODUTOS VALUES(44,'Tubo de cola','un',2,2.30)
INSERT INTO PRODUTOS VALUES(45,'Folha de cartolina','fl',2,6.90)
INSERT INTO PRODUTOS VALUES(46,'Caixa de lXpis de cor','cx',2,10.00)
INSERT INTO PRODUTOS VALUES(47,'Caderno quadriculado','un',2,34.70)
INSERT INTO PRODUTOS VALUES(48,'Tesoura sem ponta','un',2,10.15)
INSERT INTO PRODUTOS VALUES(49,'Giz de cera','cx',2,7.56)
INSERT INTO PRODUTOS VALUES(50,'RXgua','un',2,6.00)
INSERT INTO PRODUTOS VALUES(51,'Pote de Guache colorido','un',2,8.00)
INSERT INTO PRODUTOS VALUES(52,'Bola de isopor','un',2,2.99)
INSERT INTO PRODUTOS VALUES(53,'Corretor tipo liguid paper','un',2,7.80)
INSERT INTO PRODUTOS VALUES(54,'FichXrio','un',2,45.68)
GO

-- INSERINDO REGISTROS NA TABELA PEDIDOS

DECLARE @X INT

SET @X = 1

WHILE @X< 50
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,15                                                -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO


DECLARE @X INT

SET @X = 50

WHILE @X< 100
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,25                                                -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO

DECLARE @X INT

SET @X = 100

WHILE @X< 150
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,35                                                -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO

DECLARE @X INT

SET @X = 150

WHILE @X< 200
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,45                                                -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO

DECLARE @X INT

SET @X = 200

WHILE @X< 250
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,205                                               -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO

DECLARE @X INT

SET @X = 250

WHILE @X< 300
BEGIN
	INSERT INTO PEDIDOS VALUES(@X
                             ,100+(CONVERT(INT,RAND()*10)%10)+1                 -- CLIENTE
	                         ,(CONVERT(INT,RAND()*10)%3)+1                      -- TRANSPORTADORA
                             ,300                                               -- VENDEDOR 
							 , GETDATE()-10 + (CONVERT(INT,RAND()*10)%10)+1     -- DATA
							 , 0)                                               -- QTD
	SET @X = @X + 1
END
GO

-- INSERINDO REGISTROS NA TABELA ITENS_PEDIDO
DECLARE @X INT      -- ID PEDIDO
DECLARE @Y INT      -- QTD DE ITENS
DECLARE @QTD INT

SET @X = 1

WHILE @X<= 300
BEGIN	
	SET @Y = 1

	SET @QTD = CONVERT(INT,RAND()*20)+1

	WHILE @Y <= @QTD
	BEGIN

		INSERT INTO ITENS_PEDIDO VALUES(@X                                  -- IDPEDIDO
                                       ,(CONVERT(INT,RAND()*100)%54)+1      -- IDPRODUTO
									   ,(CONVERT(INT,RAND()*100)%20)+1      -- VAL DESCONTO
                                       ,(CONVERT(INT,RAND()*100)%10)+1 )    -- QTDPEDIDA 

		SET @Y = @Y + 1
	END

	SET @X = @X + 1
END
GO

UPDATE PEDIDOS
SET QTDITENSPEDIDO = A.QTD
FROM PEDIDOS , (SELECT IDPEDIDO, SUM(QTDPEDIDA) AS QTD
                FROM ITENS_PEDIDO
                GROUP BY IDPEDIDO ) AS A
WHERE PEDIDOS.IDPEDIDO = A.IDPEDIDO
GO