variable "project_id" {
  description = "ID del proyecto de Google Cloud."
  type        = string
}

variable "region" {
  description = "Región donde se creará la subred."
  type        = string
}

variable "network_name" {
  description = "Nombre de la red VPC."
  type        = string
}

variable "subnet_name" {
  description = "Nombre de la subred."
  type        = string
}

variable "subnet_cidr" {
  description = "Bloque CIDR IPv4 de la subred."
  type        = string
  default     = "10.0.1.0/24"
}

variable "routing_mode" {
  description = "Modo de enrutamiento dinámico de la red VPC."
  type        = string
  default     = "REGIONAL"

  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.routing_mode)
    error_message = "routing_mode debe ser REGIONAL o GLOBAL."
  }
}

variable "private_ip_google_access" {
  description = "Permite que instancias sin IP externa accedan a servicios de Google."
  type        = bool
  default     = true
}
