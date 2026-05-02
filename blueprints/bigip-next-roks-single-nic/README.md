# BIG-IP Next ROKS Single NIC Blueprint

This folder contains a portable blueprint manifest for BNK Forge.

The blueprint expresses the upstream sequence as BNK dependencies:

- `ibm/roks/cluster`
- `ibm/roks/cert-manager`
- `ibm/roks/flo`
- `ibm/roks/cneinstance`
- `ibm/roks/license`

Use this as the content artifact to import into the BNK Blueprint Catalog.

The exact import endpoint or source ingestion flow depends on the BNK Forge instance version. If your instance expects a slightly different blueprint schema wrapper, keep the module identities and dependency graph the same and adapt only the outer JSON shape.
