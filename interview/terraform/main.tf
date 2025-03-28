module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
}

module "mysql" {
  source      = "./modules/mysql"
  project_id  = var.project_id
  region      = var.region
  db_password = var.db_password
}

module "vpc_peering" {
  source   = "./modules/vpc_peering"
  project_id = var.project_id
  vpc_name = "default"
}

