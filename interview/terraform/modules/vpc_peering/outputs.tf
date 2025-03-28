output "peering_name" {
  description = "Name of the VPC Peering connection"
  value       = google_service_networking_connection.vpc_peering.peering
}
