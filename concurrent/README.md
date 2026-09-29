# Concurrent Manager maintenance

The original repository contained environment-specific Concurrent Manager cleanup/start commands with credentials embedded on the command line. Those examples have intentionally been removed.

For Concurrent Manager maintenance:

1. Follow the procedure appropriate to your Oracle E-Business Suite release and patch level.
2. Back up or otherwise protect relevant application/database state according to your operational procedures.
3. Stop application services cleanly before running maintenance that requires downtime.
4. Authenticate without embedding the APPS password in scripts, shell history, or source control.
5. Use the environment's supported administration scripts and paths rather than hard-coded production locations.
6. Validate Concurrent Manager and Workflow processing after maintenance.

Because cleanup procedures can modify application data and vary by EBS release, this repository does not publish a generic destructive cleanup script.

Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
