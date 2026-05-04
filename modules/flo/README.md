# IBM ROKS FLO Module

## Purpose

Deploys the F5 Lifecycle Operator and related IBM-integrated platform prerequisites on IBM ROKS.

## Engine

- Engine: `opentofu`
- Module root: `tofu/`

## Inputs

Provide IBM Cloud, BIG-IP, COS, manifest, and namespace settings needed for FLO deployment and artifact access.

## Outputs

Exposes trusted-profile, cluster issuer, and network-attachment values used by downstream BNK runtime modules.
