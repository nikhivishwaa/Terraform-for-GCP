output "bucket_name" {
  description = "Name of created Bucket"
  value       = google_storage_bucket.tf_bucket[*].name
}