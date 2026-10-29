output "virtual_network_id" {
  description = "ID de la red virtual creada."
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  description = "Nombre de la red virtual creada."
  value       = azurerm_virtual_network.this.name
}

output "subnet_id" {
  description = "ID de la subred creada."
  value       = azurerm_subnet.this.id
}

output "subnet_address_prefixes" {
  description = "Prefijos CIDR de la subred creada."
  value       = azurerm_subnet.this.address_prefixes
}
