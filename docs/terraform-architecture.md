# Terraform Architecture

## Purpose
Terraform was introduced using a **design-first approach** to avoid risk.

The goal was to define structure before applying changes.

---

## High-Level Structure

terraform/
├── bootstrap
├── modules
├── platform
└── environments

---

## Folder Responsibilities

### bootstrap
One-time setup (subscriptions, management groups, backend).

### modules
Reusable building blocks (IAM, network, tagging, AKS).

### platform
Shared platform services (identity, governance, logging).

### environments
Environment-specific workloads (prod, nonprod).

---

## State & Security
- Terraform state is not committed
- tfvars files are not committed
- Secrets are never stored in GitHub

---

## Outcome
Terraform is ready to be applied safely and incrementally.
