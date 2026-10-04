output "vm_ip" {
  value = google_compute_instance.app_server.network_interface
}