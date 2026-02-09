# Governance Baseline

## Purpose
This document explains the governance principles used to stabilize and professionalize an existing Azure tenant **without impacting production workloads**.

Governance was introduced before automation to reduce risk and enable future scalability.

---

## Initial State
At the start of this work, the Azure tenant contained:
- A single subscription
- Production and non-production workloads mixed together
- No management group hierarchy
- No tagging standards
- No Infrastructure-as-Code foundation

Production workloads already existed and could not be disrupted.

---

## Governance Principles Applied
- **Production safety first** (no downtime, no breaking changes)
- **Design before enforcement**
- **Separation of concerns**
- **Least privilege**
- **No click-ops**
- **Terraform-first mindset**

---

## Scope of Governance Changes
The following were introduced safely:
- Management Group hierarchy
- Resource classification via tags
- Terraform architecture (design-first)

The following were intentionally NOT done:
- No resource moves
- No policy enforcement
- No AKS changes
- No AI service changes

---

## Outcome
The tenant is now governance-ready, auditable, and prepared for safe automation.
