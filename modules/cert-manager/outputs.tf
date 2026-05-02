output "namespace" {
  value = module.cert_manager.namespace
}

output "release_name" {
  value = module.cert_manager.helm_release_name
}

output "crd_ready" {
  value = module.cert_manager.crd_ready
}
