output "cluster_id" {
  value = module.cluster.cluster_id
}

output "cluster_name" {
  value = module.cluster.cluster_name
}

output "openshift_cluster_id" {
  value = module.cluster.openshift_cluster_id
}

output "openshift_cluster_name" {
  value = module.cluster.openshift_cluster_name
}

output "openshift_cluster_crn" {
  value = module.cluster.openshift_cluster_crn
}

output "cluster_vpc_id" {
  value = module.cluster.cluster_vpc_id
}

output "cluster_vpc_name" {
  value = module.cluster.cluster_vpc_name
}

output "transit_gateway_id" {
  value = module.cluster.transit_gateway_id
}

output "kubeconfig_file_path" {
  value = module.cluster.kubeconfig_file_path
}

output "openshift_cluster_public_endpoint" {
  value = module.cluster.openshift_cluster_public_endpoint
}
