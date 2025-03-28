variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC network (should not include 'projects/.../global/networks/')"
  type        = string
}
