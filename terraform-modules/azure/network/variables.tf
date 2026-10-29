variable "name" {
  description = "Nombre de la red virtual."
  type        = string
}

variable "resource_group_name" {
  description = "Grupo de recursos existente donde se creará la red."
  type        = string
}

variable "location" {
  description = "Región de Azure para la red virtual."
  type        = string
}

variable "address_space" {
  description = "Espacios CIDR de la red virtual."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Nombre de la subred."
  type        = string
  default     = "default"
}

variable "subnet_address_prefixes" {
  description = "Prefijos CIDR de la subred, dentro de address_space."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "tags" {
  description = "Etiquetas para la red virtual."
  type        = map(string)
  default     = {}
}
