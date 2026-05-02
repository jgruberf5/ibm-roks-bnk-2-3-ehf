terraform {
  required_version = ">= 1.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.25.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.12.0"
    }
  }
}

module "cert_manager" {
  source = "git::https://github.com/f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic.git//modules/cert-manager?ref=2.3.0-ehf-2-3.2598.3-0.0.17"

  enabled               = var.enabled
  namespace             = var.namespace
  chart_version         = var.chart_version
  chart_repository      = var.chart_repository
  wait_for_deployment   = var.wait_for_deployment
  timeout               = var.timeout
  post_deployment_delay = var.post_deployment_delay
}
