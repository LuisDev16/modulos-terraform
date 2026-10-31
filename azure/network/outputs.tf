output "virtual_network_id" {
  description = "ID de la red virtual creada."
  value       = azurerm_virtual_network.this.id
}

output "resource_group_name" {
  description = "Nombre del grupo de recursos creado."
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "ID del grupo de recursos creado."
  value       = azurerm_resource_group.this.id
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

output "network_security_group_id" {
  description = "ID del NSG asociado a la subred."
  value       = azurerm_network_security_group.this.id
}

output "vm_id" {
  description = "ID de la máquina virtual opcional, o null si vm_enabled es false."
  value       = var.vm_enabled ? azurerm_linux_virtual_machine.this[0].id : null
}

output "vm_private_ip_address" {
  description = "Dirección IP privada de la máquina virtual opcional, o null si vm_enabled es false."
  value       = var.vm_enabled ? azurerm_network_interface.this[0].private_ip_address : null
}
