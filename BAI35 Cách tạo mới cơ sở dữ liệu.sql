CREATE DATABASE NVDB
ON
(	NAME = 'nvdb_data',
	FILENAME = 'E:\Code\DataBaseMySQL\nvdb_data.mdf',
	SIZE = 10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 5MB)
LOG ON
(	NAME = 'nvdb_log',
	FILENAME = 'E:\Code\DataBaseMySQL\nvdb_log.Ldf',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB)