output "trusted_profile_id" {
  value = module.flo.trusted_profile_id
}

output "cluster_issuer_name" {
  value = module.flo.cluster_issuer_name
}

output "cneinstance_network_attachments" {
  value = module.flo.cneinstance_network_attachments
}

output "cos_jwt_token" {
  value     = module.flo.cos_jwt_token
  sensitive = true
}
