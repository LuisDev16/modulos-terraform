# Módulo de red para Azure

Crea una red virtual y una subred en un grupo de recursos existente. No crea el grupo de recursos, gateways ni reglas de seguridad.

## Requisitos

- Terraform >= 1.3.0
- Provider `hashicorp/azurerm` >= 3.0, configurado en el módulo raíz
- Un grupo de recursos existente

## Uso

```hcl
provider "azurerm" {
  features {}
}

module "network" {
  source = "../../terraform-modules/azure/network"

  name                       = "app-vnet"
  resource_group_name        = "rg-app-dev"
  location                   = "eastus"
  address_space              = ["10.0.0.0/16"]
  subnet_name                = "app-subnet"
  subnet_address_prefixes    = ["10.0.1.0/24"]
  tags                       = { environment = "dev" }
}
```

## Salidas

- `virtual_network_id`, `virtual_network_name`
- `subnet_id`, `subnet_address_prefixes`
