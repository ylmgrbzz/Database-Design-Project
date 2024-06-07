USE master
GO

/****** Veritabanını Oluşturma ******/
CREATE DATABASE db_BerkeSari
ON PRIMARY 
(NAME = 'db_BerkeSari', FILENAME = 'C:\db_BerkeSari.mdf', SIZE = 5120KB, FILEGROWTH = 1024KB)
LOG ON 
(NAME = 'db_BerkeSari_log', FILENAME = 'C:\db_BerkeSari_log.ldf', SIZE = 1024KB , FILEGROWTH = 1024KB)
GO
ALTER DATABASE db_BerkeSari SET COMPATIBILITY_LEVEL = 150
GO
USE db_BerkeSari
GO