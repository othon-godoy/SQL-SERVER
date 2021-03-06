-- SETANDO BANCO DE DADOS
USE dbModelDatabase
GO

-- CRIANDO TABELA QUE IRÁ RECEBER OS UPDATES
CREATE TABLE T3
(
	COL1 INT NOT NULL PRIMARY KEY,
	COL2 VARCHAR(10)
)
GO

-- INSERINDO DADOS NA TABELA
INSERT T3 VALUES(1,'A')
INSERT T3 VALUES(2,'B')
INSERT T3 VALUES(3,'C')
INSERT T3 VALUES(4,'D')
GO

-- VISUALIZANDO A TABELA T3
SELECT * FROM T3
GO

-- ATUALIZANDO DADOS
UPDATE T3 SET COL2 = 'X'
WHERE COL1 = 1
GO

-- VISUALIZANDO A TABELA T3
SELECT * FROM T3
GO
