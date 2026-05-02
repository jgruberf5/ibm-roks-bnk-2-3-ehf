# BIG-IP Next ROKS Single NIC Blueprint

This folder contains a BNK Blueprint Catalog manifest using the canonical filename expected by Forge:

- `forge-blueprint.json`

The blueprint references the five catalog modules in sequence:

- `modules/cluster`
- `modules/cert-manager`
- `modules/flo`
- `modules/cneinstance`
- `modules/license`

Add this repo to the Blueprint Catalog, not just the Module Catalog, if you want Forge to discover this blueprint artifact.
