variable "project_id" {
  type        = string
  description = "The GCP Project ID where resources will be deployed"
  default = "development-510308"
}

variable "region" {
  type        = string
  description = "Region for the resources"
  default     = "asia-south1"
}

