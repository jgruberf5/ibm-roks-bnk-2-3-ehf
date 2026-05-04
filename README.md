# IBM ROKS BNK Forge Content for BNK 2.3 EHF build 2598.3-0.0.17

Forge-ready content derived from the upstream F5 DevCentral Terraform project:

- Upstream repo: `f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic`
- Upstream ref: `2.3.0-ehf-2-3.2598.3-0.0.17`

This repository packages that workflow into Forge-friendly artifacts:

- five reusable OpenTofu deployment-pack modules
- one imported-blueprint manifest with ordered module orchestration
- IBM Cloud / ROKS metadata aligned for module sync and blueprint catalog import

## Repository Model

The Forge guidance recommends separate repositories for modules and blueprints, but it also allows a combined repository when module paths and blueprint references stay stable.

This repository intentionally keeps both content types together:

- `modules/` contains reusable deployment packs
- `blueprints/` contains the governed solution definition that references those module paths

## Layout

```text
ibm-roks-bnk-2-3-ehf/
  modules/
    cluster/
      bnkforge.pack.json
      README.md
      tofu/
        main.tf
        variables.tf
        outputs.tf
    cert-manager/
      bnkforge.pack.json
      README.md
      tofu/
        main.tf
        variables.tf
        outputs.tf
    flo/
      bnkforge.pack.json
      README.md
      tofu/
        main.tf
        variables.tf
        outputs.tf
    cneinstance/
      bnkforge.pack.json
      README.md
      tofu/
        main.tf
        variables.tf
        outputs.tf
    license/
      bnkforge.pack.json
      README.md
      tofu/
        main.tf
        variables.tf
        outputs.tf
  blueprints/
    bigip-next-roks-single-nic/
      forge-blueprint.json
      README.md
```

## Module Order

The blueprint preserves the upstream execution sequence:

```text
cluster -> cert-manager -> flo -> cneinstance -> license
```

That keeps the same practical layering as the original targeted Terraform workflow while making each step discoverable and deployable in Forge.

## Import into Forge

1. Publish this repository to GitHub.
2. Add it as a Module Source in Forge and sync it so each `bnkforge.pack.json` is discovered.
3. Add the same repository as a Blueprint Source, or split the blueprint into its own repository later if desired.
4. Import `blueprints/bigip-next-roks-single-nic/forge-blueprint.json` as a governed blueprint release.
5. Create an IBM Cloud project in Forge.
6. Assign an IBM credential template with a valid `ibmcloud_api_key`.
7. Deploy the imported blueprint.

## Project Settings in Forge

Recommended settings for first validation:

- `cloud_provider = "ibm"`
- `project_type = "cloud-ibm"`
- `backend_type = "local"`

Optional production-style remote state:

- `backend_type = "s3"`
- `state_storage_provider = "ibm"`
- `s3_state_bucket = "..."`
- `s3_state_region = "..."`
- `s3_endpoint = "https://s3.<region>.cloud-object-storage.appdomain.cloud"`

## Design Notes

- Each module is a thin wrapper around the corresponding upstream child module.
- OpenTofu source files live under `tofu/` to match the recommended deployment-pack layout.
- The blueprint is tagged and categorized for the Infrastructure lane with IBM as the cloud provider.
- Module paths are intentionally stable and match the blueprint references exactly.

## Environment-Specific Inputs

At minimum, expect to set values for:

- `ibmcloud_api_key`
- `ibmcloud_cluster_region`
- `ibmcloud_resource_group`
- cluster naming and VPC choices
- BIG-IP, FAR, JWT, and COS values required by FLO, CNEInstance, and licensing flows

Use the module manifests, module READMEs, and `examples/project.auto.tfvars.example` as the concrete input contract.
