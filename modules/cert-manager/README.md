# IBM ROKS cert-manager Module

## Purpose

Installs cert-manager on the target IBM ROKS cluster before platform-layer modules run.

## Engine

- Engine: `opentofu`
- Module root: `tofu/`

## Inputs

Provide namespace, chart version, repository URL, and wait settings used for the cert-manager installation.

## Outputs

Exposes namespace, Helm release name, and a CRD-ready token used by dependent modules.
