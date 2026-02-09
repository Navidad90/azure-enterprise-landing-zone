# Azure Enterprise Landing Zone (Production-Safe)

## Overview
This repository documents the design and implementation of a **production-grade Azure Enterprise Landing Zone**, built using **Microsoft best practices** and **Terraform-first principles**.

The work was performed against a **real Azure tenant** that already contained:
- a production AKS cluster (custom internal ChatGPT)
- AI / OpenAI services
- shared platform resources
- sandbox and intern workloads

The primary objective was to **introduce enterprise-grade structure, governance, and security**
**without causing downtime or impacting production workloads**.

---

## What this repository represents (important)
This is **not a collection of disconnected demos**.

This repository represents:
> **One Azure tenant, evolved step by step into an enterprise-ready platform.**

Each project builds on the previous one, exactly how real organizations modernize Azure environments.

---

## Business Context
Originally, the Azure tenant had:
- a single subscription
- all workloads mixed together (production, test, sandbox)
- no management group hierarchy
- no tagging strategy
- no Infrastructure-as-Code foundation

This increased:
- operational risk
- security exposure
- cost opacity
- difficulty scaling safely

---

## Repository Structure (High-Level)

.
├── README.md # Entry point (this file)
├── docs/ # Architecture & design documentation
└── terraform/ # Infrastructure-as-Code implementation


---

## Projects in This Repository

### Project 1 — Enterprise Azure Landing Zone (Governance Foundation)

**Goal:**  
Establish a safe, governed Azure foundation **without touching live production resources**.

**What was implemented:**
- Management Group hierarchy (Corp / Prod / NonProd)
- Production workload protection
- Tagging strategy for classification and cost visibility
- Enterprise Terraform folder architecture
- Governance-first, zero-downtime approach

**Key outcomes:**
- Production AKS and AI workloads remained untouched
- Governance was introduced safely
- Tenant prepared for Infrastructure-as-Code adoption

**Relevant documentation:**
- `docs/governance-baseline.md`
- `docs/management-groups.md`
- `docs/tagging-strategy.md`
- `docs/terraform-architecture.md`

---

### Project 2 — IAM & RBAC Platform (Security & Access Control)

**Goal:**  
Design and enforce **enterprise-grade access control** using Azure RBAC and Terraform.

**What was implemented:**
- Entra ID users and security groups
- Group-based access model (Admin / Developer / Auditor)
- Least-privilege role assignments
- Terraform-managed RBAC
- Safe, isolated test resource groups
- Real user validation (no theory-only work)

**Key outcomes:**
- No permissions assigned directly to users
- No production access changes
- RBAC validated by logging in as real users
- Access is auditable, reproducible, and scalable

**Relevant documentation:**
- `docs/project-2-summary.md` (non-technical overview)
- `docs/iam-rbac.md` (detailed technical explanation)
- `terraform/platform/identity/` (Terraform implementation)

---

## Final Management Group Hierarchy (After Project 1)

Tenant Root
├── Platform
│ ├── Management
│ └── Identity
│
└── LandingZones
├── Corp-Prod
│ └── Azure subscription 1 (Production)
└── Corp-NonProd
└── (Future NonProd subscription)


---

## Production Safety Guarantees
Throughout all projects:
- No resources were moved
- No AKS changes were made
- No policies were enforced
- No downtime occurred

All changes were **design, governance, or test-only**.

---

## Terraform Philosophy Used
- Infrastructure-as-Code by default
- Clear separation of:
  - bootstrap
  - platform services
  - reusable modules
  - environments
- No Terraform state or secrets committed to GitHub
- Designed for multi-subscription growth

---

## Why this repository matters
This repository demonstrates:
- real Azure platform thinking
- safe modernization of existing environments
- governance before automation
- security before convenience
- Terraform used responsibly

It reflects **how enterprise Azure platforms are actually built**, not tutorial examples.

---

## Next planned projects
- Project 3 — Enterprise Networking (Hub & Spoke)
- Project 4 — Secure Application Platform
- Project 5 — CI/CD for Infrastructure
- Project 6 — AKS Platform & Workloads

---

## Author
**Navid**  
Azure Solutions Architect / Cloud Engineer  
Focus: Azure, Terraform, Security, AKS, Enterprise Platforms
