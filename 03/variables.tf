variable "project_id" {
  description = "Project ID where resouce will be getting created"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Bucket"
  type        = string
}

variable "region" {
  description = "Region of the Bucket"
  type        = string
  default     = "ASIA-SOUTH1"
}