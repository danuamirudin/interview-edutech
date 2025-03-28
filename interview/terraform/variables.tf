variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-southeast2"
}

variable "db_password" {
  description = "Database root password"
  type        = string
  sensitive   = true
}
