-- CRIANDO O BANCO DE DADOS
CREATE DATABASE dbModelDatabase
GO

-- USANDO O BANCO DE DADOS
USE dbModelDatabase
GO

-- CRIANDO AS TABELAS
CREATE TABLE CLIENTES
(
	IdCliente int PRIMARY KEY,
	NomeCliente varchar(50) not null,
	EndCliente  varchar(100) not null
)
GO

CREATE TABLE PRODUTOS
(
	IdProduto	int PRIMARY KEY,
	NomeProduto varchar(50) not null,
	UMProduto	varchar(2) not null,
	IdCategoria int not null ,
	PrcProduto numeric(10,2) not null
)
GO

CREATE TABLE CATEGORIAS
(
	IdCategoria int PRIMARY KEY,
	NomeCategoria	varchar(50) not null,
	CategoriaPerecivel	bit not null,
	VendeOnLine			bit not null
)
GO

CREATE TABLE TRANSPORTADORAS
(
	IdTransportadora int PRIMARY KEY,
	NomeTransportadora	varchar(50) not null,
	MeioTransporte	varchar(25) not null,
	PrcFrete		numeric(10,2) not null,
	PrazoMaximoDias	tinyint not null
)
GO

CREATE TABLE PEDIDOS
(
	IdPedido int PRIMARY KEY,	
	IdCliente int not null,
	idTransportadora int not null,
	IdVendedor int not null,
	DataPedido datetime not null,
	QtdItensPedido int not null
)
GO

CREATE TABLE ITENS_PEDIDO
(
	IdPedido int NOT NULL,
	IdProduto int NOT NULL,
	ValDesconto NUMERIC(10,2) not null,
	QtdPedida	int not null
)
GO

CREATE TABLE VENDEDORES
(
	IdVendedor INT NOT NULL PRIMARY KEY,
	IdGerenteVendas int NULL,
	NomeVendedor varchar(50) NOT NULL,
	QuotaVendas	NUMERIC(10,2) NOT NULL,
	BonusVenda	INT NOT NULL
)
GO

-- CRIANDO OS RELACIONAMENTOS
ALTER TABLE PRODUTOS
ADD CONSTRAINT FK_CATEGORIA FOREIGN KEY (IdCategoria) REFERENCES CATEGORIAS(IdCategoria)
GO

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_CLIENTE FOREIGN KEY (IdCliente) REFERENCES CLIENTES(IdCliente)
GO

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_TRANSPORTADORA FOREIGN KEY (IdTransportadora) REFERENCES TRANSPORTADORAS(IdTransportadora)
GO

ALTER TABLE PEDIDOS
ADD CONSTRAINT FK_VENDEDOR FOREIGN KEY (IdVendedor) REFERENCES VENDEDORES(IdVendedor)
GO

ALTER TABLE ITENS_PEDIDO
ADD CONSTRAINT PK_ITENS_PEDIDO PRIMARY KEY (IdPedido,IdProduto)
GO

ALTER TABLE ITENS_PEDIDO
ADD CONSTRAINT FK_PEDIDO FOREIGN KEY (IdPedido) REFERENCES PEDIDOS(IdPedido)
GO

ALTER TABLE ITENS_PEDIDO
ADD CONSTRAINT FK_PRODUTO FOREIGN KEY (IdProduto) REFERENCES PRODUTOS(IdProduto)
GO


ALTER TABLE VENDEDORES
ADD CONSTRAINT FK_Gerente FOREIGN KEY (IdGerenteVendas) REFERENCES VENDEDORES(IdVendedor)
GO