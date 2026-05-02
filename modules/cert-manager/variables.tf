variable "enabled" {
  description = "Enable cert-manager deployment"
  type        = bool
  default     = true
}

variable "namespace" {
  description = "cert-manager namespace"
  type        = string
  default     = "cert-manager"
}

variable "chart_version" {
  description = "cert-manager Helm chart version"
  type        = string
  default     = "v1.17.3"
}

variable "chart_repository" {
  description = "cert-manager Helm repository"
  type        = string
  default     = "https://charts.jetstack.io"
}

variable "wait_for_deployment" {
  description = "Wait for deployment readiness"
  type        = bool
  default     = true
}

variable "timeout" {
  description = "Helm timeout in seconds"
  type        = number
  default     = 300
}

variable "post_deployment_delay" {
  description = "Delay after deploy for CRD registration"
  type        = number
  default     = 30
}
