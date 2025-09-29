/*
===================================================
Create Database and Schemas
===================================================
Script Purpose:
	This Script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, yhe scripts sets up three schemas within the database: 'bronze', 'silver', 'gold'.
	
	WARNING:
		Running this script will drop the entire 'Datawarehouse' database if it exists.
		All Data in the database will be deleted permanently. 
		Proceed with caution and ensure you have peoper backups before executing this scripts.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
