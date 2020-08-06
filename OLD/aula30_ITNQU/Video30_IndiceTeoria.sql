-- INDEX THEORY
----------------------------------------

USE CURSO_SQL2014_IMPL
GO

-- INDEXES ARE THE MOST IMPORTANT OBJECT USED TO OPTIMIZE SQL SERVER
-- I.E. REDUCE THE EXECUTION TIME OF SQL STATEMENTS

-- THERE ARE MANY TYPES OF INDEXES IN SQL SERVER 2014:
--	-> CLUSTERED
--  -> NONCLUSTERED
--  -> XML
--  -> FULL-TEXT INDEXES
--  -> COLUMNSTORE 
--  -> OTHER TYPES AND VARIATIONS

-- THIS COURSE WILL FOCUS ON THE TWO MAIN TYPES: CLUSTERED AND NONCLUSTERED

-- INDEXES ARE LIKE THE INDEX OF A BOOK: IT HELPS YOU GET TO WHERE YOU WANT FASTER
-- WHICH MEANS THE EXACT LINES OF THE TABLES

-- INDEXES DUPLICATE THE TABLE DATA, BUT NOT ALL COLUMNS
-- IN GENERAL, SPEED UP SELECT AND SLOW DOW INSERT, UPDATE AND DELETES

-- BUT FIRST, A LITTLE BIT OF THEORY ON HOW SQL SERVER STORED ITS DATA
-- INSIDE THE TABLES. THE DATA (ROWS) ARE STORED IN 8KB PAGES. SEE Figure1_DataPage.gif

-- THE NUMBER OF PAGES DEPENDS OF THE ROWS (ITS AMOUNT AND ITS SIZE)
-- EXAMPLE:

CREATE TABLE TB_SMALL_ROW
(
	SMALL_COL INT NOT NULL
)
GO

SP_SPACEUSED 'TB_SMALL_ROW'

SELECT * FROM TB_SMALL_ROW

INSERT TB_SMALL_ROW VALUES(1)

SP_SPACEUSED 'TB_SMALL_ROW'


CREATE TABLE TB_BIG_ROW
(
	BIG_COL CHAR(8000) NOT NULL
)
GO

SP_SPACEUSED 'TB_BIG_ROW'

SELECT * FROM TB_BIG_ROW

INSERT TB_BIG_ROW VALUES('A')

SP_SPACEUSED 'TB_BIG_ROW'

-- THE PAGES ARE ORGANIZED AS A B-TREE TO PROVIDE FAST ACCESS TO THE DATA
-- SEE FIGURE2_TREE.JPG AND FIGURE3_TREE.GIF

-- JUST LIKE A TREE UPSIDE DOW:

-- THE TOP PAGE IS CALLED ROOT
-- THE INTERMEDIARY PAGES ARE CALLED NONLEAF PAGES
-- THE BOTTON  PAGES ARE CALLED LEAF PAGES

-- NOTE: IF A TABLE DO NOT HAVE INDEXES WE CALL THE SET OF PAGES A HEAP

-- EXAMPLE:

SP_HELP TB_SMALL_ROW
SP_HELP TB_BIG_ROW

SP_SPACEUSED 'TB_SMALL_ROW'
SP_SPACEUSED 'TB_BIG_ROW'

SELECT * 
FROM SYS.indexes
WHERE OBJECT_ID = OBJECT_ID('TB_SMALL_ROW')


SELECT * 
FROM SYS.indexes
WHERE OBJECT_ID = OBJECT_ID('TB_BIG_ROW')


-- THE CLUSTERED INDEX
----------------------

-- THE CLUSTERED INDEX IS THE MAIN TYPE OF INDEX
-- IT ORDERS THE PAGES IN A PHYSICAL ORDER (MOVE THEM ACCORDING TO ORDERING OF THE KEY)
-- I.E. THE LEAF PAGES ARE THE ACTUAL DATA PAGES. SEE Figure4_CLUSTERED.JPG

-- A TABLE CAN HAVE ONLY ONE CLUSTERED INDEX
-- USUALLY WHEN YOU CREATE A PRIMARY KEY YOU HAVE A CLUSTEDED INDEX BEHIND IT

-- EXAMPLES:

SP_HELPINDEX CLIENTES
SP_HELPINDEX PEDIDOS
SP_HELPINDEX ITENS_PEDIDO


SELECT * 
FROM SYS.indexes
WHERE OBJECT_ID = OBJECT_ID('CLIENTES')


-- THE NONCLUSTERED INDEX
----------------------

-- THE NONCLUSTERED INDEX IS THE SECOND MOST IMPORTANT TYPE OF INDEX
-- IT ORDER THE INDEX PAGES AND IT USES THE CLUSTERED INDEX (THE ACTUAL DATA PAGES)

-- THE LEAF PAGES POINT TO THE ACTUAL DATA PAGES. SEE Figure5_NONCLUSTERED.JPG

-- THERE CAN BE MORE THAN ONE NONCLUSTERED INDEX PER TABLE

-- USE IT WISELY: DO NOT CREATE INDEXES FOR EVEARY COLUMN IN THE TABLE!
-- IT IS COMMON TO CREATE NONCLUSTERED INDEXES ON COLUMNS THAT HAVE A FK CONSTRAINT
-- EXAMPLE:

SELECT * 
FROM PRODUTOS

SP_HELPINDEX PRODUTOS
SP_HELP PRODUTOS

SELECT * 
FROM SYS.indexes
WHERE OBJECT_ID = OBJECT_ID('PRODUTOS')
