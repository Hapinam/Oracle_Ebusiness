------------------------------------------------------------------------------
-- Script    : environment/check_ebs_version.sql
-- Purpose   : Display the Oracle E-Business Suite release name.
-- Usage     : SQL> @environment/check_ebs_version.sql
-- Requires  : SELECT access to APPLSYS.FND_PRODUCT_GROUPS.
--
-- Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
------------------------------------------------------------------------------

SET PAGESIZE 100
SET LINESIZE 120

SELECT release_name
FROM   applsys.fnd_product_groups;
