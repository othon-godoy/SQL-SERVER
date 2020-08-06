-- LOGIN, USERS AND SCHEMA
-----------------------------------------

USE CURSO_SQL2014_IMPL
GO

-- SQL SERVER HAS LOGINS AND USERS
-- LOGINS ARE USED TO ACCESS THE SERVER (AUTHENTICATION)

-- USERS ARE USED TO GRANT OR DENY ACCESS TO OBJECTS/RESOURCES (AUTHORIZATION)

-- A LOGIN IS ASSOCIATED WITH A USER THAT IS LINKED TO A DATABASE

-- YOU SET SERVER PERMISSIONS ON THE LOGIN
-- AND DATABASE AND DATA PERMISSIONS ON THE USER

-- CHECK THE LOGINS IN THE SERVER'S SECURITY   FOLDER
-- CHECK THE USERS  IN THE DATABASE'S SECURITY FOLDER

-- YOU CAN CREATE LOGINS AND USERS WITH THE MANAGEMENT STUDIO UI 
-- OR COMMANDS

-- EXAMPLE:
-- CREATE THE LOGIN L_JONH AND THE JONH DATABASE USER
-- WITH THE UI

-- EXAMPLE:
-- CREATE THE LOGIN L_JONH AND THE JONH DATABASE USER
-- WITH COMMANDS

EXEC SP_ADDLOGIN 'l_Jonh','abc123#'

exec SP_GRANTDBACCESS 'l_Jonh','Jonh' 

-- THE USER HAS IT'S OWN SCHEMA WHEN CREATING OBJECTS
-- EXAMPLE: LOG IN WITH THE l_Jonh LOGIN AND CREATE A TABLE

SELECT * 
FROM JONH_TABLE

-- YOU SET THE PERMISSIONS ON OBJETS WITH GRANT, DENY AND REVOKE COMMANDS

-- EXAMPLE:

-- WITH THE SA LOGIN
CREATE TABLE TB_PERM
(
	ID INT NOT NULL,
	NAME VARCHAR(10)
)

SELECT * FROM TB_PERM

INSERT TB_PERM VALUES(1,'A')
INSERT TB_PERM VALUES(2,'B')
INSERT TB_PERM VALUES(3,'C')
INSERT TB_PERM VALUES(4,'D')

EXEC SP_ADDLOGIN 'Mary','abc123#'

exec SP_GRANTDBACCESS 'Mary','m' 

-- GRANT
-- DCL (DATA CONTROL LANGUAGE)

GRANT SELECT ON TB_PERM TO m

GRANT INSERT ON TB_PERM TO m

-- DENY
DENY SELECT ON TB_PERM TO m

-- REVOKE
REVOKE INSERT ON TB_PERM TO m


GRANT CREATE TABLE TO m