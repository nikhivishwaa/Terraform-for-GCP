output "vm_ip" {
  value = google_compute_instance.vm_instance.network_interface
}