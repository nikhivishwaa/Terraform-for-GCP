# 1. Fetch the existing default network details
data "google_compute_network" "default_vpc" {
  name = "default"
}

# 2. Fetch a specific subnet from the default network
data "google_compute_subnetwork" "default_subnet" {
  name   = "default" # The subnetwork name matches the network name in the default setup
  region = var.region
}

# 3. Provision the VM using the data sources
resource "google_compute_instance" "vm_instance" {
  name         = "my-data-driven-vm"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    # Dynamically references the self_link attributes from your data sources
    network    = data.google_compute_network.default_vpc.self_link
    subnetwork = data.google_compute_subnetwork.default_subnet.self_link

    access_config {
      // Ephemeral public IP
    }
  }
}
