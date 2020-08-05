-- INFORMATION ABOUT THE DATABASE
SELECT DB_NAME(database_id) AS DatabaseName,
Name AS Logical_Name,
Physical_Name, (size*8)/1024 SizeMB
FROM sys.master_files
WHERE DB_NAME(database_id) = 'dbTestInfo'
GO


-- PHYSICAL INFORMATION
SELECT database_id, f.file_id, volume_mount_point, total_bytes, available_bytes
FROM sys.database_files AS f
CROSS APPLY sys.dm_os_volume_stats(DB_ID(f.name), f.file_id);


-- STATUS ABOUT THE VOLUMES

USE [master]
GO
 
SELECT * FROM sys.dm_os_volume_stats (1, 1);
GO

-- INFORMATION ABOUT THE TRANSACTION LOG

DBCC SQLPERF(LOGSPACE)