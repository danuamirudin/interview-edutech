resource "google_container_cluster" "gke_cluster" {
  name               = "interview-gke"
  location           = var.region
  remove_default_node_pool = true
  initial_node_count = 1

  network    = "default"
  subnetwork = "default"

  deletion_protection = false

  ip_allocation_policy {}
}

resource "google_container_node_pool" "gke_nodes" {
  name       = "interview-node-pool"
  cluster    = google_container_cluster.gke_cluster.name
  location   = var.region
  node_count = 1

  autoscaling {
    min_node_count = 1
    max_node_count = 2
  }

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
