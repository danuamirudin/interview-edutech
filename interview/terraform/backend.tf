terraform {
  backend "gcs" {
    bucket  = "golden-resolver-455014-d8-tf-state"
    prefix  = "terraform/state"
  }
}
