terraform {
  required_version = ">= 1.0"

  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60.0"
    }
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

module "flo" {
  source = "git::https://github.com/f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic.git//modules/flo?ref=2.3.0-ehf-2-3.2598.3-0.0.17"

  enabled                        = var.enabled
  cert_manager_crd_ready         = var.cert_manager_crd_ready
  far_repo_url                   = var.far_repo_url
  cert_manager_namespace         = var.cert_manager_namespace
  f5_bigip_k8s_manifest_version  = var.f5_bigip_k8s_manifest_version
  manifest_download_dir          = var.manifest_download_dir
  bigip_username                 = var.bigip_username
  bigip_password                 = var.bigip_password
  bigip_url                      = var.bigip_url
  flo_namespace                  = var.flo_namespace
  utils_namespace                = var.utils_namespace
  jwt_token                      = var.jwt_token
  cluster_issuer_name            = var.cluster_issuer_name
  nad_cni_type                   = var.nad_cni_type
  nad_interface_name             = var.nad_interface_name
  nad_ipvlan_mode                = var.nad_ipvlan_mode
  nad_ipvlan_address             = var.nad_ipvlan_address
  use_cos_bucket                 = var.use_cos_bucket
  ibmcloud_api_key               = var.ibmcloud_api_key
  ibmcloud_cos_bucket_region     = var.ibmcloud_cos_bucket_region
  ibmcloud_resource_group        = var.ibmcloud_resource_group
  ibmcloud_cos_instance_name     = var.ibmcloud_cos_instance_name
  ibmcloud_resources_cos_bucket  = var.ibmcloud_resources_cos_bucket
  f5_cne_far_auth_file           = var.f5_cne_far_auth_file
  f5_cne_subscription_jwt_file   = var.f5_cne_subscription_jwt_file
  openshift_cluster_name         = var.openshift_cluster_name
  openshift_cluster_crn          = var.openshift_cluster_crn
  cluster_vpc_id                 = var.cluster_vpc_id
}
