variable "enabled" {
  description = "Enable FLO deployment"
  type        = bool
  default     = true
}

variable "cert_manager_crd_ready" {
  description = "Dependency trigger from cert-manager"
  type        = string
  default     = null
}

variable "far_repo_url" {
  description = "FAR repository URL"
  type        = string
  default     = "repo.f5.com"
}

variable "cert_manager_namespace" {
  description = "Namespace where cert-manager was installed"
  type        = string
  default     = "cert-manager"
}

variable "f5_bigip_k8s_manifest_version" {
  description = "F5 BIG-IP K8s manifest version"
  type        = string
  default     = "2.3.0-bnpp-ehf-2-3.2598.3-0.0.17"
}

variable "manifest_download_dir" {
  description = "Manifest download directory"
  type        = string
  default     = "/tmp/f5-manifest"
}

variable "bigip_username" {
  description = "BIG-IP username"
  type        = string
  default     = "admin"
}

variable "bigip_password" {
  description = "BIG-IP password"
  type        = string
  default     = ""
  sensitive   = true
}

variable "bigip_url" {
  description = "BIG-IP URL"
  type        = string
  default     = ""
}

variable "flo_namespace" {
  description = "FLO namespace"
  type        = string
  default     = "f5-bnk"
}

variable "utils_namespace" {
  description = "F5 utilities namespace"
  type        = string
  default     = "f5-utils"
}

variable "jwt_token" {
  description = "JWT token for license authentication when not sourced from COS"
  type        = string
  default     = ""
  sensitive   = true
}

variable "cluster_issuer_name" {
  description = "Cluster issuer name"
  type        = string
  default     = "sample-issuer"
}

variable "nad_cni_type" {
  description = "NAD CNI type"
  type        = string
  default     = "ipvlan"
}

variable "nad_interface_name" {
  description = "NAD interface name"
  type        = string
  default     = "ens3"
}

variable "nad_ipvlan_mode" {
  description = "NAD IPVLAN mode"
  type        = string
  default     = "l2"
}

variable "nad_ipvlan_address" {
  description = "Static IPVLAN address"
  type        = string
  default     = "10.10.1.1/24"
}

variable "use_cos_bucket" {
  description = "Fetch FAR auth key and JWT from IBM COS"
  type        = bool
  default     = true
}

variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
  sensitive   = true
}

variable "ibmcloud_cos_bucket_region" {
  description = "IBM COS bucket region"
  type        = string
  default     = "us-south"
}

variable "ibmcloud_resource_group" {
  description = "IBM Cloud resource group"
  type        = string
  default     = "default"
}

variable "ibmcloud_cos_instance_name" {
  description = "IBM COS instance name"
  type        = string
  default     = "bnk-orchestration"
}

variable "ibmcloud_resources_cos_bucket" {
  description = "IBM COS bucket name for resources"
  type        = string
  default     = "bnk-schematics-resources"
}

variable "f5_cne_far_auth_file" {
  description = "FAR auth archive filename in COS"
  type        = string
  default     = "f5-far-auth-key.tgz"
}

variable "f5_cne_subscription_jwt_file" {
  description = "Subscription JWT filename in COS"
  type        = string
  default     = "trial.jwt"
}

variable "openshift_cluster_name" {
  description = "OpenShift cluster name"
  type        = string
  default     = ""
}

variable "openshift_cluster_crn" {
  description = "OpenShift cluster CRN"
  type        = string
  default     = ""
}

variable "cluster_vpc_id" {
  description = "Cluster VPC ID"
  type        = string
  default     = ""
}
