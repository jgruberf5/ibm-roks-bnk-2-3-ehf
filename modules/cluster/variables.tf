variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
  sensitive   = true
}

variable "ibmcloud_cluster_region" {
  description = "IBM Cloud region for cluster resources"
  type        = string
  default     = "jp-tok"
}

variable "ibmcloud_resource_group" {
  description = "IBM Cloud resource group name"
  type        = string
  default     = "default"
}

variable "create_cluster" {
  description = "Create OpenShift cluster"
  type        = bool
  default     = true
}

variable "create_transit_gateway" {
  description = "Create transit gateway"
  type        = bool
  default     = true
}

variable "create_cos_instance" {
  description = "Create Cloud Object Storage for OpenShift registry"
  type        = bool
  default     = true
}

variable "create_client_vpc" {
  description = "Create client VPC"
  type        = bool
  default     = true
}

variable "create_jumphost" {
  description = "Create jumphost in client VPC"
  type        = bool
  default     = true
}

variable "cluster_vpc_name" {
  description = "Name of the cluster VPC"
  type        = string
  default     = "tf-cluster-vpc"
}

variable "use_existing_cluster_vpc" {
  description = "Use existing cluster VPC instead of creating one"
  type        = bool
  default     = false
}

variable "existing_cluster_vpc_id" {
  description = "Existing cluster VPC ID"
  type        = string
  default     = ""
}

variable "zones" {
  description = "Availability zones; leave empty for auto-detection"
  type        = list(string)
  default     = []
}

variable "client_vpc_name" {
  description = "Name of the client VPC"
  type        = string
  default     = "tf-client-vpc"
}

variable "client_vpc_region" {
  description = "Region for client VPC"
  type        = string
  default     = "eu-gb"
}

variable "use_existing_client_vpc" {
  description = "Use existing client VPC instead of creating one"
  type        = bool
  default     = false
}

variable "existing_client_vpc_id" {
  description = "Existing client VPC ID"
  type        = string
  default     = ""
}

variable "client_jumphost_name" {
  description = "Name of the client jumphost"
  type        = string
  default     = "tf-client-jumphost"
}

variable "ssh_key_name" {
  description = "SSH key name for jumphost"
  type        = string
  default     = ""
}

variable "jumphost_profile" {
  description = "Optional explicit profile for jumphost"
  type        = string
  default     = ""
}

variable "min_vcpu_count" {
  description = "Minimum vCPU count for jumphost"
  type        = number
  default     = 4
}

variable "min_memory_gb" {
  description = "Minimum memory in GB for jumphost"
  type        = number
  default     = 8
}

variable "cos_instance_name" {
  description = "COS instance name for OpenShift registry"
  type        = string
  default     = "tf-cos-instance"
}

variable "openshift_cluster_name" {
  description = "Name of the OpenShift cluster"
  type        = string
  default     = "tf-openshift-cluster"
}

variable "openshift_cluster_version" {
  description = "OpenShift cluster version"
  type        = string
  default     = "4.18"
}

variable "worker_pool_name" {
  description = "Worker pool name"
  type        = string
  default     = "tf-worker-pool"
}

variable "worker_flavor" {
  description = "Optional explicit worker flavor"
  type        = string
  default     = ""
}

variable "workers_per_zone" {
  description = "Number of worker nodes per zone"
  type        = number
  default     = 1
}

variable "min_worker_vcpu_count" {
  description = "Minimum worker vCPU count"
  type        = number
  default     = 16
}

variable "min_worker_memory_gb" {
  description = "Minimum worker memory in GB"
  type        = number
  default     = 64
}

variable "transit_gateway_name" {
  description = "Transit gateway name"
  type        = string
  default     = "tf-tgw"
}
