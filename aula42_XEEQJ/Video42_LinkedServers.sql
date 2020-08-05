-- LINKED SERVERS
---------------------------------------------------------------------------

USE CURSO_SQL2014_IMPL
GO

-- LINKED SERVER ARE OBJETS USED TO MAKE A REFERENCES TO ANOTHER
-- SQL SERVER (REMOTE) OR OTHER RDBMS 

-- USE LINKED SERVERS TO SHARE DATA AND OBJECTS AMONG SQL SERVERs

-- YOU CAN ACCESS OLDER SQL SERVERS (7.0,2000, 2008, 2012)

-- YOU CAN ACCESS OTHER DATABASES (ORACLE, MYSQL,ETC) AS LONG AS YOU HAVE THE CORECT PROVIDER
-- SEE FIGURE1_LINKEDSERVERS.GIF

-- REVIEW THE SECURITY PERMISSIONS

-- CHECK THE DOCUMENTATION FOR MORE INFORMATION ABOUT THE PROVIDERS
http://msdn.microsoft.com/en-us/library/ms190479.aspx

-- EXAMPLE: CREATE A LINKED SERVER TO ITSELF

-- USE THE OBJECT EXPLORER UNDER THE SERVER OBJECTS FOLDER

-- CHOOSE THE NAME (MY_SERVER)
-- CHOOSE THE 'Microsoft OLE DB Provider for SQL Server' 
--- CHOOSE THE IP ADDRESS (OR HOSTNAME) IN THE Data Source
--  SET THE CREDENTIALS ON THE Security SESSION

-- ACCESS THE DATA
SELECT * 
FROM MY_SERVER.CURSO_SQL2014_IMPL.dbo.CLIENTES


-- EXAMPLE: USE THE SP_ADDLINKEDSERVER STORED PROCEDURE

EXEC sp_addlinkedserver   
   @server=N'OTHER', 
   @srvproduct=N'',
   @provider=N'SQLNCLI', 
   @datasrc=N'localhost';

SELECT * 
FROM OTHER.CURSO_SQL2014_IMPL.dbo.CLIENTES

-- SEE THE SERVERS
SELECT *
FROM SYS.servers

-- REMOVE THE LINKED SERVER
exec sp_dropserver 'OTHER' 