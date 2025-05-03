/*

=============================================================================
Creating Datebase and Schemas
=============================================================================
Script Propose:
  This script creates a new databse called 'DataWareHouse' after checking if it already exists. If it does, it's dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze,' 'silver,' and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists. All data in the darewhouse will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/

-- Database: DataWareHouse

-- DROP DATABASE IF EXISTS "DataWareHouse";

CREATE DATABASE "DataWareHouse"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- SCHEMA: bronze

-- DROP SCHEMA IF EXISTS bronze ;

CREATE SCHEMA IF NOT EXISTS bronze
    AUTHORIZATION postgres;

-- SCHEMA: gold

-- DROP SCHEMA IF EXISTS gold ;

CREATE SCHEMA IF NOT EXISTS gold
    AUTHORIZATION postgres;

-- SCHEMA: silver

-- DROP SCHEMA IF EXISTS silver ;

CREATE SCHEMA IF NOT EXISTS silver
    AUTHORIZATION postgres;
