output "network_id" {
  description = "ID de la red VPC creada."
  value       = google_compute_network.this.id
}

output "network_name" {
  description = "Nombre de la red VPC creada."
  value       = google_compute_network.this.name
}

output "subnet_id" {
  description = "ID de la subred creada."
  value       = google_compute_subnetwork.this.id
}

output "subnet_self_link" {
  description = "Self-link de la subred creada."
  value       = google_compute_subnetwork.this.self_link
}

output "subnet_cidr" {
  description = "Bloque CIDR de la subred creada."
  value       = google_compute_subnetwork.this.ip_cidr_range
}
