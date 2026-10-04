resource "google_compute_instance" "app_server" {
  name         = "app-instance"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  tags = ["app-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network    = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.app_subnet.id

    # Include an empty access_config block to assign a public ephemeral IP address
    access_config {
      // Ephemeral public IP
    }
  }

#   metadata = {
#     ssh-keys = "${var.ssh_user}:${file(var.ssh_pub_key_path)}"
#   }
}
