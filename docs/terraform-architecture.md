# Terraform Architecture

Terraform will be used AFTER governance.

Planned structure:

terraform/
- bootstrap
- platform
- environments
- modules

Remote state in Azure Storage.
One state per layer.
