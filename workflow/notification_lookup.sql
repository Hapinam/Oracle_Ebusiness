------------------------------------------------------------------------------
-- Script    : workflow/notification_lookup.sql
-- Purpose   : List Workflow notifications for a supplied recipient role.
-- Usage     : SQL> @workflow/notification_lookup.sql
-- Requires  : SELECT access to APPS.WF_NOTIFICATIONS.
--
-- Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
------------------------------------------------------------------------------

SET VERIFY OFF
SET PAGESIZE 100
SET LINESIZE 220

ACCEPT recipient_role CHAR PROMPT 'Recipient role: '

SELECT notification_id,
       status,
       mail_status,
       begin_date,
       end_date,
       sent_date,
       message_type,
       from_role,
       due_date
FROM   apps.wf_notifications
WHERE  recipient_role = '&recipient_role'
ORDER  BY notification_id DESC;

UNDEFINE recipient_role
SET VERIFY ON
