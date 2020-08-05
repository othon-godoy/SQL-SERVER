-- STATISTICS
----------------------------------------

USE CURSO_SQL2014_IMPL
GO

-- STATISTICS IS THE NAME SQL SERVER USE TO OBTAIN INFORMATION
-- ABOUT THE DISTRIBUTION OF THE DATA

-- THEY ARE USED TO HELP THE QUERY OPTIMIZER CHOOSE A BETTER EXECUTION PLAN

-- BASICALLY THEY TAKE THE FORM OF AN HISTOGRAM WITH THE 
-- FREQUENCY OF THE DATA VALUES. SEE Figure1_Histogram.gif

-- STATISTICS ARE AUTOMATICALLY CREATED FOR EACH INDEX YOU CREATE
-- BUT YOU SHOULD UPDATE THEM (INDEX MAINTENANCE)

-- YOU HAVE A DATABASE OPTIONS TO AUTO-CREATE AND AUTO-UPDATE STATISTICS
-- FOR NONINDEXED COLUMNS. CHECK THE DATABASE PROPERTIES

-- IF THE OPTIONS ARE ON, STATISTICS ARE CREATED/UPDATED UPPON 
-- COLUMN USAGE

-- EXAMPLE: CHECK THE STATISTICS FOLDER FOR THE CLIENTES 
-- AND ITENS_PEDIDO TABLES ON OBJECT EXPLORER

-- YOU CAN ALO USE THE DBCC_SHOW_STATISTICS COMMAND:

DBCC SHOW_STATISTICS('dbo.ITENS_PEDIDO ' ,'_WA_Sys_00000002_182C9B23' )  
WITH HISTOGRAM

-- HOW CAN WE KNOW IF THE STATISCS ARE UP TO DATE?

-- CHECK THE ACTUAL EXECUTED PLAN AND COMPARE THE VALUES FOR THE
-- 'ACTUAL NUMBER OF ROWS' AND 'ESTIMATED NUMBER OF ROWS' ON
-- THE OPERATOR'S TOOLKIT
	--> IF THEY ARE CLOSE OR EQUAL, STATISTICS ARE UP TO DATE
	--> ELSE, YOU SHOULD CREATE/UPDATE THE STATISTICS
-- EXAMPLE:

SELECT *
FROM ITENS_PEDIDO

-- YOU CAN FORCE THE UPDATE OF STATISTICS WITH THE
-- UPDATE STATISTICS COMMAND

SP_HELPINDEX ITENS_PEDIDO

UPDATE STATISTICS ITENS_PEDIDO(PK_ITENS_PEDIDO)
WITH FULLSCAN

-- YOU CAN SEE INFO. ABOUT STATISTICS ON TWO
-- DMVs: SYS.STATS AND SYS.STATS_COLUMNS 

-- EXAMPLE:
 SELECT   sys.stats.object_id ,
 sys.stats.stats_id ,
 sys.stats.name ,
 sys.stats_columns.column_id
 FROM     sys.stats
 INNER JOIN sys.stats_columns ON sys.stats.object_id = sys.stats_columns.object_id
 AND sys.stats.stats_id = sys.stats_columns.stats_id
 WHERE    sys.stats.auto_created = 1
 AND sys.stats_columns.stats_column_id = 1
 

