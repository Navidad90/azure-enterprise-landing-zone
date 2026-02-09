# IAM & RBAC Platform

## Purpose
IAM and RBAC control who can do what and where in Azure.

This project implements access control correctly and safely.

---

## Access Model

| Group | Role | Scope |
|-----|-----|------|
| IAM Platform Admins | Owner | rg-iam-test-admin |
| IAM Developers | Contributor | rg-iam-test-dev |
| IAM Auditors | Reader | rg-iam-test-readonly |

---

## Terraform Implementation
RBAC assignments were defined using Terraform to ensure:
- repeatability
- auditability
- least privilege

---

## Validation
Each user logged in via Azure CLI:
- Admin could create and delete resources
- Developer could create resources only in dev scope
- Auditor could only read resources

Unauthorized actions were blocked.

---

## Outcome
RBAC behaves exactly as designed, without impacting production.
