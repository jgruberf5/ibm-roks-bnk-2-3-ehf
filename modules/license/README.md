# IBM ROKS License Module

## Purpose

Applies the BIG-IP Next license custom resource after the runtime layer is in place.

## Engine

- Engine: `opentofu`
- Module root: `tofu/`

## Inputs

Provide the JWT token, utility namespace, and optional dependency hints needed for the license workflow.

## Outputs

Exposes the namespace and license resource identifier created by the wrapper module.
