# Oracle E-Business Suite DBA Toolkit

Practical SQL and administration examples for common Oracle E-Business Suite (EBS) operational checks.

## Scope

This repository is a reference toolkit for Oracle DBAs working with Oracle E-Business Suite. The examples cover EBS release information, installed languages, Workflow notification status, notification lookup, and Concurrent Manager maintenance guidance.

The repository intentionally contains no passwords, customer-specific identifiers, hostnames, or production environment paths.

## Repository layout

| Path | Purpose |
| --- | --- |
| `environment/check_ebs_version.sql` | Display the Oracle E-Business Suite release |
| `environment/installed_languages.sql` | List base and installed EBS languages |
| `workflow/mailer_status.sql` | Summarize Workflow Notification Mailer queue states |
| `workflow/notification_lookup.sql` | Look up notifications for a supplied recipient role |
| `concurrent/README.md` | Safe guidance for Concurrent Manager cleanup/start procedures |
| `tools/check_repo.sh` | Basic repository security and hygiene checks |

## Requirements

- Oracle E-Business Suite database access
- SQL*Plus or SQLcl
- Appropriate read privileges for the referenced APPS/APPLSYS objects
- Administrative access for any Concurrent Manager maintenance activity

## Usage

Review each script before use and test it in a non-production environment first.

Example:

```sql
SQL> @environment/check_ebs_version.sql
```

The notification lookup script prompts for a recipient role rather than embedding an environment-specific identifier.

## Safety

Oracle E-Business Suite administration can affect application availability and business processing. Validate procedures against the EBS release in use, your organization's change process, and current Oracle documentation before performing maintenance.

## Security

Do not commit EBS application passwords, database passwords, connection strings, customer identifiers, hostnames, or environment-specific paths. Use approved secret-management and authentication mechanisms.

`tools/check_repo.sh` performs basic checks for credential-like values, private IP addresses, and CRLF line endings.

## License

Released under the MIT License. Copyright (c) 2026 Mohamed Dawood.
