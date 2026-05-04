# BIG-IP Next for Kubernetes on IBM ROKS Single NIC

## Solution Description

Deploys a full IBM Cloud / ROKS foundation for BIG-IP Next for Kubernetes and then layers cert-manager, FLO, CNEInstance, and licensing in the correct order.

This blueprint is intended to import into Forge as an Infrastructure blueprint with IBM as the cloud provider.

## What You Get

- IBM ROKS cluster provisioning or attachment workflow
- cert-manager installed before F5 platform components
- FLO deployed with IBM COS-backed artifact support
- BIG-IP Next CNEInstance configuration on the target cluster
- License custom resource deployment after platform runtime is ready

## Prerequisites

- All referenced module paths from this repository must already be synced into the active Forge module catalog
- A valid IBM credential template or project secret must provide `ibmcloud_api_key`
- Environment-specific IBM Cloud values such as region, resource group, VPC choices, and SSH key names must be available
- BIG-IP, FAR, JWT, and IBM COS inputs must be supplied when platform deployment and licensing flows are enabled

## Modules

### Cluster Foundation

Uses `modules/cluster` to provision or attach the IBM ROKS cluster foundation and associated IBM networking resources.

### cert-manager

Uses `modules/cert-manager` to install cert-manager and wait for CRDs before the BNK platform layer is applied.

### F5 Lifecycle Operator

Uses `modules/flo` to install FLO, configure IBM trusted-profile integration, and prepare artifacts and network attachments used by downstream modules.

### CNEInstance

Uses `modules/cneinstance` to create the BIG-IP Next runtime custom resource once FLO is present.

### License

Uses `modules/license` to create the BIG-IP Next license resource after CNEInstance dependencies are available.

## Input Variables

Provide IBM Cloud account details, target region, cluster naming, COS settings, and the BIG-IP / JWT values needed for the BNK platform deployment. The blueprint manifest defines the deploy form, while each referenced module README describes how those values are consumed.
