------------------------------------------------------------------------------
-- Script    : workflow/mailer_status.sql
-- Purpose   : Summarize Oracle Workflow notification outbound queue states.
-- Usage     : SQL> @workflow/mailer_status.sql
-- Requires  : SELECT access to APPLSYS.WF_NOTIFICATION_OUT.
--
-- Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
------------------------------------------------------------------------------

SET PAGESIZE 100
SET LINESIZE 120

COLUMN state FORMAT A20

SELECT DECODE(wfo.state,
              0, '0 = Ready',
              1, '1 = Delayed',
              2, '2 = Processed',
              3, '3 = Exception',
              TO_CHAR(SUBSTR(wfo.state, 1, 12))) AS state,
       COUNT(*) AS message_count
FROM   applsys.wf_notification_out wfo
GROUP  BY wfo.state
ORDER  BY wfo.state;
