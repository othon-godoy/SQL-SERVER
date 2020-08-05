-- IMPORTING AND EXPORTING DATA
-------------------------------

USE CURSO_SQL2014_IMPL
GO

-- SQL SERVER HAS MANY WAYS TO IMPORT/EXPORT DATA
-- IF YOU NEED A COMPLET SET OF ETL (EXTRACT TRANSFORM LOAD) TOOLS
-- USE SQL SERVER INTEGRATION SERVICES (SSIS)

-- THE DATA CAN BE IN MANY FORMATS:
	--> CSV (COMMA SEPARATED VALUES) 
	--> XML
	--> JSON

-- THERE ARE SOME TASKS TO PERFORM BEFORE IMPORTING/EXPORTING:
	--> DISABLE/ENABLE CONSTRAINTS
	--> DISABLE/ENABLE TRIGGERS
	--> CHECK THE TRANSACTION LOG SIZE
	--> STOP BACKUP TASKS
	--> CONSIDER CHANCHING THE RECOVERY MODEL 

-- LET'S SEE SOME EXAMPLES OF IMPORT/EXPORTING THE
-- TEST.CSV FILE

-- IMPORTING
------------

-- 1) USING THE BULK INSERT COMMAND

-- CREATE THE TABLE
DROP TABLE T_IMPORT

CREATE TABLE T_IMPORT
(
	NUMBER_DATA INT,
	STRING_DATA VARCHAR(8000)
)
GO
-- THERE ARE MANY PARAMETERS FOR THE BULK INSERT
-- CHECK THE DOCUMENTATION AT: 
-- http://msdn.microsoft.com/pt-br/library/ms188365.aspx


BULK INSERT CURSO_SQL2014_IMPL.dbo.T_IMPORT
   FROM 'C:\SQL2014Impl\Video43\TEST.CSV'
   WITH 
      (
         FIELDTERMINATOR =',',
         ROWTERMINATOR ='\n'
      );

SELECT * 
FROM T_IMPORT

-- 2) USE THE IMPORT/EXPORT WIZARD

TRUNCATE TABLE T_IMPORT

SELECT * 
FROM T_IMPORT


-- 3) USE THE BCP (COMMAND LINE)

> bcp CURSO_SQL2014_IMPL.dbo.T_IMPORT in TEST.CSV -T -c

SELECT * 
FROM T_IMPORT


-- EXPORTING
------------

-- 1) GET THE RESULTS FROM THE GRID

SELECT * 
FROM CLIENTES

-- 2) USE THE BCP (COMMAND LINE)

> bcp "SELECT * FROM CURSO_SQL2014_IMPL.dbo.CLIENTES" queryout "bcpexport.txt" -T -c -t

-- 3) USE THE IMPORT/EXPORT WIZARD

