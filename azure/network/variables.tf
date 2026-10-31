variable "name" {
  description = "Nombre de la red virtual."
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos que creará el módulo."
  type        = string
}

variable "location" {
  description = "Región de Azure para la red virtual."
  type        = string
}

variable "address_space" {
  description = "Espacios CIDR de la red virtual."
  type        = list(string)
}

variable "subnet_name" {
  description = "Nombre de la subred."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Prefijos CIDR de la subred, dentro de address_space."
  type        = list(string)
}

variable "tags" {
  description = "Etiquetas para los recursos."
  type        = map(string)
  default     = {}
}

variable "vm_enabled" {
  description = "Crea una máquina virtual Linux pequeña en la subnet. Puede generar costos y depende de la cuota y disponibilidad regional."
  type        = bool
  default     = false
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual opcional. Verifica su disponibilidad y cuota en la región elegida."
  type        = string
  default     = "Standard_B1s"
}

variable "vm_admin_username" {
  description = "Usuario administrador de la máquina virtual opcional."
  type        = string
  default     = "azureuser"
}

variable "vm_admin_ssh_public_key" {
  description = "Clave SSH pública para la máquina virtual. Obligatoria si vm_enabled es true."
  type        = string
  default     = null
  nullable    = true

  validation {
    condition     = !var.vm_enabled || try(length(trimspace(var.vm_admin_ssh_public_key)) > 0, false)
    error_message = "vm_admin_ssh_public_key debe contener una clave pública cuando vm_enabled es true."
  }
}
