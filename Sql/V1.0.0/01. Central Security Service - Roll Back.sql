--------------------------------------------------------------------------------
-- Copyright © 2025+ Eamonn Anthony Duffy. All Rights Reserved.
--------------------------------------------------------------------------------
--
-- Version: V1.0.0.
--
-- Created: Eamonn A. Duffy, 6-June-2025.
--
-- Updated: Eamonn A. Duffy, 1-August-2026.
--
-- Purpose: Roll Back Script for the Main SQL for the Central Security Service PostgreSQL Database.
--
-- Assumptions:
--
--  0.  The PostgreSQL database has already been created and the target schema is selected.
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Drop the Tables if/as appropriate.
--------------------------------------------------------------------------------

BEGIN TRANSACTION;

DROP TABLE IF EXISTS "Dad"."References";
DROP TABLE IF EXISTS "Dad"."ReferenceTypes";
DROP TABLE IF EXISTS "Dad"."CentralSecurityServiceDatabaseVersions";

--------------------------------------------------------------------------------
-- Drop the Unique Reference Id if/as appropriate.
--------------------------------------------------------------------------------

DROP SEQUENCE IF EXISTS "Dad"."UniqueReferenceId";

--------------------------------------------------------------------------------
-- Drop Schema if/as appropriate.
--------------------------------------------------------------------------------

DROP SCHEMA IF EXISTS "Dad" CASCADE;

COMMIT TRANSACTION;

--------------------------------------------------------------------------------
-- End Of File.
--------------------------------------------------------------------------------

/*

ROLLBACK TRANSACTION;

*/
