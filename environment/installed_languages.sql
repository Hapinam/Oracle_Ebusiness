------------------------------------------------------------------------------
-- Script    : environment/installed_languages.sql
-- Purpose   : List Oracle E-Business Suite base and installed languages.
-- Usage     : SQL> @environment/installed_languages.sql
-- Requires  : SELECT access to APPS.FND_LANGUAGES_VL.
--
-- Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
------------------------------------------------------------------------------

SET PAGESIZE 100
SET LINESIZE 160

COLUMN language_code FORMAT A15
COLUMN installation_status FORMAT A20
COLUMN description FORMAT A60

SELECT language_code,
       DECODE(installed_flag,
              'I', 'Installed',
              'B', 'Base',
              'D', 'Not Installed',
              installed_flag) AS installation_status,
       description
FROM   apps.fnd_languages_vl
ORDER  BY installation_status, language_code;
