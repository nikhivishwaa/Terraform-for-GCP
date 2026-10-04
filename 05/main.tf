resource "google_storage_bucket" "tf_bucket" {
  for_each = var.buckets

  name     = each.key
  location = each.value

  # Single-region storage
  storage_class = "STANDARD"

  # Prevent accidental deletion
  force_destroy = false

  uniform_bucket_level_access = true
}
