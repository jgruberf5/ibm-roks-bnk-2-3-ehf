terraform {
  required_version = ">= 1.0"

  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60.0"
    }
  }
}

module "cluster" {
  source = "git::https://github.com/f5devcentral/ibmcloud_schematics_bigip_next_for_kubernetes_roks_2_3_single_nic.git//modules/cluster?ref=2.3.0-ehf-2-3.2598.3-0.0.17"

  ibmcloud_api_key         = var.ibmcloud_api_key
  cluster_region           = var.ibmcloud_cluster_region
  resource_group           = var.ibmcloud_resource_group
  create_cluster           = var.create_cluster
  create_client_vpc        = var.create_client_vpc
  create_jumphost          = var.create_jumphost
  create_transit_gateway   = var.create_transit_gateway
  create_cos_instance      = var.create_cos_instance
  cluster_vpc_name         = var.cluster_vpc_name
  use_existing_cluster_vpc = var.use_existing_cluster_vpc
  existing_cluster_vpc_id  = var.existing_cluster_vpc_id
  zones                    = var.zones
  client_vpc_name          = var.client_vpc_name
  client_vpc_region        = var.client_vpc_region
  use_existing_client_vpc  = var.use_existing_client_vpc
  existing_client_vpc_id   = var.existing_client_vpc_id
  client_jumphost_name     = var.client_jumphost_name
  ssh_key_name             = var.ssh_key_name
  jumphost_profile         = var.jumphost_profile
  min_vcpu_count           = var.min_vcpu_count
  min_memory_gb            = var.min_memory_gb
  openshift_cluster_name   = var.openshift_cluster_name
  openshift_cluster_version = var.openshift_cluster_version
  worker_pool_name         = var.worker_pool_name
  worker_flavor            = var.worker_flavor
  min_worker_vcpu_count    = var.min_worker_vcpu_count
  min_worker_memory_gb     = var.min_worker_memory_gb
  workers_per_zone         = var.workers_per_zone
  cos_instance_name        = var.cos_instance_name
  transit_gateway_name     = var.transit_gateway_name
}
