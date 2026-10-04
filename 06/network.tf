# Create the Custom VPC
resource "google_compute_network" "vpc_network" {
  name                    = "demo-vpc"
  auto_create_subnetworks = false
}

# App Subnet
resource "google_compute_subnetwork" "app_subnet" {
  name          = "app-subnet"
  ip_cidr_range = "192.168.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

# DB Subnet
resource "google_compute_subnetwork" "db_subnet" {
  name          = "db-subnet"
  ip_cidr_range = "172.35.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
