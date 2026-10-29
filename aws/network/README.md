# Módulo de red para AWS

Crea una VPC con soporte DNS habilitado y una subred privada (no asigna IP pública automáticamente). No crea gateway de Internet, NAT ni tablas de rutas.

## Requisitos

- Terraform >= 1.3.0
- Provider `hashicorp/aws` >= 5.0, configurado en el módulo raíz

## Uso

```hcl
provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "../../terraform-modules/aws/network"

  name                = "app"
  vpc_cidr            = "10.0.0.0/16"
  subnet_cidr         = "10.0.1.0/24"
  availability_zone   = "us-east-1a"
  tags                = { Environment = "dev" }
}
```

## Salidas

- `vpc_id`, `vpc_cidr`
- `subnet_id`, `subnet_cidr`
