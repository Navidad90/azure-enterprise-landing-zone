# Management Group Design

## Purpose
Management Groups provide logical separation and control at scale.

This design was introduced to protect production workloads while enabling future growth.

---

## Final Hierarchy

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

## Design Rationale
- **Platform**: Shared services and identity
- **LandingZones**: Application workloads
- **Corp-Prod**: Production workloads only
- **Corp-NonProd**: Reserved for future separation

---

## Production Safety
- The existing subscription remained in place
- No workloads were moved
- Only governance structure was introduced

---

## Outcome
Production workloads were protected while preparing the tenant for multi-subscription expansion.
