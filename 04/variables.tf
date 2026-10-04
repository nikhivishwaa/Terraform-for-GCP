variable "project_id" {
  description = "Project ID where resouce will be getting created"
  type        = string
  default = "development-510308"
}

variable "bucket_names" {
  description = "List of Names of the Buckets"
  type        = list(string)
  default = ["pk-tf-bkt", "pk-tf-bkt-1", "pk-tf-bkt-2", "pk-tf-bkt-3"]
}

variable "region" {
  description = "Region of the Bucket"
  type        = string
  default     = "ASIA-SOUTH1"
}