variable "name" {
  description = "Nombre de la VPC y prefijo para sus recursos."
  type        = string
}

variable "vpc_cidr" {
  description = "Bloque CIDR de la VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Bloque CIDR de la subred, contenido dentro de vpc_cidr."
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zona de disponibilidad para la subred. Si es null, AWS selecciona una."
  type        = string
  default     = null
  nullable    = true
}

variable "tags" {
  description = "Etiquetas adicionales para los recursos."
  type        = map(string)
  default     = {}
}
