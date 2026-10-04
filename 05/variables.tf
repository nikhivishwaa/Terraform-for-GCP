variable "project_id" {
  description = "Project ID where resouce will be getting created"
  type        = string
  default     = "development-510308"
}

variable "buckets" {
  description = "List of Names of the Buckets"
  type        = map(string)
  default = { "pk-tf-bkt" : "ASIA-SOUTH1", "pk-tf-bkt-1" : "ASIA-SOUTH2", "pk-tf-bkt-2" : "ASIA-SOUTH2", "pk-tf-bkt-3" : "ASIA-SOUTH2"
  }
}
