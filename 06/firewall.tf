# Allow SSH access to the App Instance
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh-app"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"] 
  target_tags   = ["app-server"]
}

resource "google_compute_firewall" "allow_http" {
  name    = "allow-http-app"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_ranges = ["0.0.0.0/0"] 
  target_tags   = ["app-server"]
}