output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "db_instance_name" {
  value = module.mysql.db_instance_name
}
