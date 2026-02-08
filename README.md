# Azure Enterprise Landing Zone (Production-Safe)

## Overview
This project implements a **production-grade Azure Landing Zone** following Microsoft Enterprise Landing Zone principles.

The goal is to establish a **safe, governed, and scalable Azure foundation** for:
- Production AKS workloads
- AI / OpenAI services
- Future Dev/Test environments
- Infrastructure-as-Code using Terraform

This was implemented **without impacting live production workloads**.

---

## Business Problem
Initially, all Azure workloads (production, test, sandbox) were deployed into:
- A single subscription
- Under the Tenant Root management group
- With no clear governance boundaries

This increased:
- Operational risk
- Cost opacity
- Difficulty enforcing security controls safely

---

## Solution
A phased, zero-downtime approach was used:

1. Introduce **Management Group hierarchy**
2. Protect production workloads
3. Classify resources using **tags**
4. Prepare the tenant for **Terraform-driven governance**
5. Enable future Prod / NonProd separation

---

## Final Management Group Hierarchy

Tenant Root  
├── Platform  
│   ├── Management  
│   └── Identity  
│  
└── LandingZones  
    ├── Corp-Prod  
    │   └── Azure subscription 1 (Production)  
    └── Corp-NonProd  
        └── (Future NonProd subscription)

---

## Production Safety Guarantees
- No resources were moved
- No AKS changes
- No policies enforced
- No downtime

All changes were **governance-only**.

---

## Key Governance Mechanism: Tagging

Tags were applied at **resource group level** to classify workloads without risk.

### Mandatory Tags
- environment: prod | nonprod
- workload: aks | ai | platform | sandbox
- owner
- criticality: high | medium | low

### Example
Production AKS resource group:
