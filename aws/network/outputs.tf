output "vpc_id" {
  description = "ID de la VPC creada."
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "Bloque CIDR de la VPC."
  value       = aws_vpc.this.cidr_block
}

output "subnet_id" {
  description = "ID de la subred creada."
  value       = aws_subnet.this.id
}

output "subnet_cidr" {
  description = "Bloque CIDR de la subred."
  value       = aws_subnet.this.cidr_block
}
