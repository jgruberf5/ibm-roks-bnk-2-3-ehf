terraform {
  required_version = ">= 1.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.25.0"
    }
  }
}

module "cneinstance" {
  source = "git::https://github.com/f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic.git//modules/cneinstance?ref=2.3.0-ehf-2-3.2598.3-0.0.17"

  enabled                           = var.enabled
  flo_namespace                     = var.flo_namespace
  utils_namespace                   = var.utils_namespace
  cneinstance_spec                  = var.cneinstance_spec
  f5_bigip_k8s_manifest_version     = var.f5_bigip_k8s_manifest_version
  cneinstance_gateway_api           = var.cneinstance_gateway_api
  cneinstance_whole_cluster         = var.cneinstance_whole_cluster
  cneinstance_logging_subsystem     = var.cneinstance_logging_subsystem
  cneinstance_metric_subsystem      = var.cneinstance_metric_subsystem
  cluster_issuer_name               = var.cluster_issuer_name
  cneinstance_deployment_size       = var.cneinstance_deployment_size
  far_repo_url                      = var.far_repo_url
  cneinstance_dynamic_routing       = var.cneinstance_dynamic_routing
  cneinstance_firewall_acl          = var.cneinstance_firewall_acl
  cneinstance_pseudocni             = var.cneinstance_pseudocni
  cneinstance_env_discovery         = var.cneinstance_env_discovery
  cneinstance_cloud_env             = var.cneinstance_cloud_env
  cneinstance_cloud_provider        = var.cneinstance_cloud_provider
  cneinstance_vpc_name              = var.cneinstance_vpc_name
  cneinstance_cloud_region          = var.cneinstance_cloud_region
  cneinstance_ibm_trusted_profile_id = var.cneinstance_ibm_trusted_profile_id
  cneinstance_gslb_datacenter_name  = var.cneinstance_gslb_datacenter_name
  cneinstance_network_attachments   = var.cneinstance_network_attachments
  flo_deployment_id                 = var.flo_deployment_id
  flo_deployment_dependency         = var.flo_deployment_dependency
}
