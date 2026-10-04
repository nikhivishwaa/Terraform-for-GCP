provider "google" {
  project = "development-510308"
  region  = "asia-south1"
}


resource "google_storage_bucket" "tf_bucket" {
  name     = "pk-tf-bkt"
  location = "ASIA-SOUTH1"

  # Single-region storage
  storage_class = "STANDARD"

  # Prevent accidental deletion
  force_destroy = false

  uniform_bucket_level_access = true
}