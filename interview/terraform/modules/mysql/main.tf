resource "google_sql_database_instance" "db_instance" {
  name             = "interview-mysql-instance"
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier              = "db-f1-micro"
    availability_type = "ZONAL"
    disk_size         = 10

    ip_configuration {
      ipv4_enabled    = false   
      private_network = "projects/${var.project_id}/global/networks/default"  
    }
  }
}

resource "google_sql_user" "db_user" {
  name     = "root"
  instance = google_sql_database_instance.db_instance.name
  password = var.db_password
}
