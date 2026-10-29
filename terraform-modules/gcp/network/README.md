# Módulo de red para Google Cloud

Crea una red VPC en modo personalizado (sin subredes automáticas) y una subred regional. No crea reglas de firewall ni Cloud NAT.

## Requisitos

- Terraform >= 1.3.0
- Provider `hashicorp/google` >= 5.0, configurado en el módulo raíz
- API Compute Engine habilitada en el proyecto

## Uso

```hcl
provider "google" {
  project = "mi-proyecto"
  region  = "us-central1"
}

module "network" {
  source = "../../terraform-modules/gcp/network"

  project_id                 = "mi-proyecto"
  region                     = "us-central1"
  network_name               = "app-vpc"
  subnet_name                = "app-subnet"
  subnet_cidr                = "10.0.1.0/24"
  private_ip_google_access   = true
}
```

## Salidas

- `network_id`, `network_name`
- `subnet_id`, `subnet_self_link`, `subnet_cidr`
