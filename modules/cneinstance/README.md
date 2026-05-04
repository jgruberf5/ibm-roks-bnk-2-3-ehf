# IBM ROKS CNEInstance Module

## Purpose

Creates the BIG-IP Next CNEInstance runtime custom resource after FLO is ready.

## Engine

- Engine: `opentofu`
- Module root: `tofu/`

## Inputs

Provide the BIG-IP Next manifest version, trusted-profile metadata, network attachments, and runtime feature toggles.

## Outputs

Exposes the resulting CNEInstance identifiers and namespace for later operational or licensing steps.
