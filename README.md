# IBM ROKS BNK Forge Content for BNK 2.3 EHF build 2598.3-0.0.17

BNK Flow content repo for the upstream F5 DevCentral Terraform project:

- Upstream repo: `f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic`
- Upstream ref: `2.3.0-ehf-2-3.2598.3-0.0.17`

This repo converts the upstream root-module-plus-`-target` workflow into BNK-native content:

- five deployable OpenTofu modules
- one dependency-ordered blueprint
- IBM Cloud as the target provider

## Why this repo exists

The upstream repo expects operators to run these targeted steps in order:

1. `module.cluster`
2. `module.cert_manager`
3. `module.flo`
4. `module.cneinstance`
5. `module.license`

BNK Flow works better when each step is a first-class module with its own:

- metadata
- inputs and outputs
- state
- dependency edges

This repo keeps the upstream module content as the source of truth and provides thin wrapper modules that BNK Forge can catalog and orchestrate cleanly.

## Layout

```text
ibm-roks-bnk-flow/
  modules/
    cluster/
    cert-manager/
    flo/
    cneinstance/
    license/
  blueprints/
    bigip-next-roks-single-nic/
```

## Module order

The blueprint declares this dependency chain:

```text
cluster -> cert-manager -> flo -> cneinstance -> license
```

That gives the same practical execution order as the upstream `terraform apply -target=...` workflow, but in BNK-native form.

## Import into BNK Forge

1. Put this repo in GitHub.
2. Add the repo as an approved module source in BNK Forge.
3. Sync the module source so BNK discovers each `bnkforge.pack.json`.
4. Add the same repo or a separate blueprint repo as a Blueprint Catalog source.
5. Import `blueprints/bigip-next-roks-single-nic/blueprint.json` as a governed blueprint release.
6. Create an IBM Cloud project in BNK Forge.
7. Assign an IBM credential template with a valid `ibmcloud_api_key`.
8. Deploy the blueprint to the project.

## Project settings in BNK Forge

Recommended BNK project settings:

- `cloud_provider = "ibm"`
- `backend_type = "local"` for first validation

Optional production-style state backend:

- `backend_type = "s3"`
- `state_storage_provider = "ibm"`
- `s3_state_bucket = "..."`
- `s3_state_region = "..."`
- `s3_endpoint = "https://s3.<region>.cloud-object-storage.appdomain.cloud"`

## Important design notes

- `cluster` is a direct wrapper around the upstream `modules/cluster` child module.
- `cert-manager`, `flo`, `cneinstance`, and `license` are also direct wrappers around the upstream child modules.
- The upstream root module had provider glue for IBM Cloud cluster auth. In BNK Forge, later modules rely on BNK provider injection for IBM/Kubernetes/Helm instead of a shared root `providers.tf`.
- A few inputs that were formerly root-level glue are carried explicitly between modules through outputs and blueprint variable mappings.

## Variables you still need to set per environment

At minimum, expect to provide values for:

- `ibmcloud_api_key`
- `ibmcloud_cluster_region`
- `ibmcloud_resource_group`
- `openshift_cluster_name` or `cluster_id_existing`
- FAR / JWT / BIG-IP related values when `deploy_bnk`-equivalent behavior is desired

See each module's `variables.tf` and `bnkforge.pack.json` for the exact contract.
