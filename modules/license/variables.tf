variable "enabled" {
  description = "Enable license deployment"
  type        = bool
  default     = true
}

variable "utils_namespace" {
  description = "Utilities namespace"
  type        = string
  default     = "f5-utils"
}

variable "jwt_token" {
  description = "JWT token for license authentication"
  type        = string
  sensitive   = true
}

variable "license_mode" {
  description = "License mode"
  type        = string
  default     = "connected"
}

variable "cneinstance_dependency" {
  description = "Explicit CNEInstance dependency object"
  type        = any
  default     = null
}
