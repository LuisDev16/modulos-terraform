# Módulo de red para Azure

Crea un Resource Group, una red virtual, una subred y un NSG asociado a la subred. El NSG conserva las reglas predeterminadas de Azure; el módulo no agrega reglas de entrada. No crea gateways.

Opcionalmente puede crear una VM Linux `Standard_B1s`, desactivada por defecto. La VM no tiene IP pública y requiere una clave SSH pública. Habilitarla puede generar costos y está sujeto a la cuota y disponibilidad del tamaño en la región seleccionada.

## Requisitos

- Terraform >= 1.3.0
- Provider `hashicorp/azurerm` >= 3.0, configurado en el módulo raíz
- Credenciales con permisos para crear un grupo de recursos y recursos de red

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

  # Opcional: requiere cuota disponible y una clave SSH pública.
  # vm_enabled              = true
  # vm_admin_ssh_public_key = file("~/.ssh/id_rsa.pub")
}
```

El valor predeterminado de `vm_enabled` es `false`, por lo que no se crea ni factura una máquina virtual. El acceso a la VM habilitada es únicamente por red privada; no se crea una IP pública ni una regla SSH entrante.

## Salidas

- `virtual_network_id`, `virtual_network_name`
- `subnet_id`, `subnet_address_prefixes`
- `resource_group_id`, `resource_group_name`
- `network_security_group_id`
- `vm_id`, `vm_private_ip_address` (son `null` si la VM está deshabilitada)
