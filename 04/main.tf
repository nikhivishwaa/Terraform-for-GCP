resource "google_storage_bucket" "tf_bucket" {
  count = length(var.bucket_names)

  name     = var.bucket_names[count.index]
  location = var.region

  # Single-region storage
  storage_class = count.index % 2 == 0 ? "STANDARD" : "NEARLINE"

  # Prevent accidental deletion
  force_destroy = false

  uniform_bucket_level_access = true
}
