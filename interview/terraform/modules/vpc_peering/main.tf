# Enable the Service Networking API
resource "google_project_service" "service_networking" {
  service = "servicenetworking.googleapis.com"
}

# Reserve a Private IP range for Cloud SQL
resource "google_compute_global_address" "private_ip_alloc" {
  name          = "google-managed-services-${var.project_id}" 
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = "projects/${var.project_id}/global/networks/${var.vpc_name}" 
}

# Create VPC Peering with Google's Service Networking
resource "google_service_networking_connection" "vpc_peering" {
  network                 = "projects/${var.project_id}/global/networks/${var.vpc_name}"
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_alloc.name]
}

