# Tagging Strategy

## Purpose
Tags allow Azure resources to be understood by humans, not just engineers.

They enable:
- cost tracking
- ownership clarity
- workload classification
- audit readiness

---

## Tagging Rules
Tags were applied at **Resource Group level** to avoid risk.

---

## Mandatory Tags
- environment: prod | nonprod
- workload: aks | ai | platform | sandbox
- owner
- criticality: high | medium | low

---

## Example
A production AKS resource group was tagged to classify:
- environment = prod
- workload = aks
- criticality = high

---

## Safety
Tagging does not modify resources and is fully reversible.

No production impact occurred.
