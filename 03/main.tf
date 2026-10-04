resource "google_storage_bucket" "tf_bucket" {
  name     = "pk-tf-bkt"
  location = var.region

  # Single-region storage
  storage_class = "STANDARD"

  # Prevent accidental deletion
  force_destroy = false

  uniform_bucket_level_access = true
}