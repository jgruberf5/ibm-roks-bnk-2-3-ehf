variable "enabled" {
  description = "Enable CNEInstance deployment"
  type        = bool
  default     = true
}

variable "flo_namespace" {
  description = "FLO namespace"
  type        = string
  default     = "f5-bnk"
}

variable "utils_namespace" {
  description = "Utilities namespace"
  type        = string
  default     = "f5-utils"
}

variable "cneinstance_spec" {
  description = "Optional full CNEInstance spec override"
  type        = any
  default     = {}
}

variable "f5_bigip_k8s_manifest_version" {
  description = "F5 BIG-IP manifest version"
  type        = string
  default     = "2.3.0-bnpp-ehf-2-3.2598.3-0.0.17"
}

variable "cneinstance_gateway_api" {
  description = "Enable Gateway API"
  type        = bool
  default     = true
}

variable "cneinstance_whole_cluster" {
  description = "Deploy to whole cluster"
  type        = bool
  default     = true
}

variable "cneinstance_logging_subsystem" {
  description = "Enable logging subsystem"
  type        = bool
  default     = true
}

variable "cneinstance_metric_subsystem" {
  description = "Enable metric subsystem"
  type        = bool
  default     = true
}

variable "cluster_issuer_name" {
  description = "Cluster issuer name"
  type        = string
  default     = "sample-issuer"
}

variable "cneinstance_deployment_size" {
  description = "Deployment size"
  type        = string
  default     = "Small"
}

variable "far_repo_url" {
  description = "FAR repository URL"
  type        = string
  default     = "repo.f5.com"
}

variable "cneinstance_dynamic_routing" {
  description = "Enable dynamic routing"
  type        = bool
  default     = false
}

variable "cneinstance_firewall_acl" {
  description = "Enable firewall ACL"
  type        = bool
  default     = true
}

variable "cneinstance_pseudocni" {
  description = "Enable pseudo CNI"
  type        = bool
  default     = true
}

variable "cneinstance_env_discovery" {
  description = "Enable environment discovery"
  type        = bool
  default     = false
}

variable "cneinstance_cloud_env" {
  description = "Enable cloud environment"
  type        = bool
  default     = true
}

variable "cneinstance_cloud_provider" {
  description = "Cloud provider"
  type        = string
  default     = "ibm"
}

variable "cneinstance_vpc_name" {
  description = "Cluster VPC name"
  type        = string
  default     = ""
}

variable "cneinstance_cloud_region" {
  description = "Cloud region"
  type        = string
  default     = ""
}

variable "cneinstance_ibm_trusted_profile_id" {
  description = "IBM trusted profile ID"
  type        = string
  default     = ""
}

variable "cneinstance_gslb_datacenter_name" {
  description = "GSLB datacenter name"
  type        = string
  default     = ""
}

variable "cneinstance_network_attachments" {
  description = "Network attachment definitions"
  type        = list(string)
  default     = []
}

variable "flo_deployment_id" {
  description = "FLO deployment identifier"
  type        = string
  default     = ""
}

variable "flo_deployment_dependency" {
  description = "Explicit FLO dependency object"
  type        = any
  default     = null
}
