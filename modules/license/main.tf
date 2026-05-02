terraform {
  required_version = ">= 1.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.25.0"
    }
  }
}

module "license" {
  source = "git::https://github.com/f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic.git//modules/license?ref=2.3.0-ehf-2-3.2598.3-0.0.17"

  enabled                = var.enabled
  utils_namespace        = var.utils_namespace
  jwt_token              = var.jwt_token
  license_mode           = var.license_mode
  cneinstance_dependency = var.cneinstance_dependency
}
