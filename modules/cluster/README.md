# IBM ROKS Cluster Foundation Module

## Purpose

Provisions or attaches the IBM ROKS cluster foundation used by the downstream BIG-IP Next modules.

## Engine

- Engine: `opentofu`
- Module root: `tofu/`

## Inputs

Provide IBM Cloud account, region, resource group, and cluster/VPC settings required to stand up or attach the target cluster.

## Outputs

Exposes cluster identity, CRN, VPC metadata, and kubeconfig-related values used by downstream modules and blueprint orchestration.
