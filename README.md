# Módulos de red de Terraform

Colección de módulos reutilizables para crear una red básica en AWS, Azure y Google Cloud.

## Estructura

```text
terraform-modules/
├── aws/network/
├── azure/network/
└── gcp/network/
```

Cada módulo incluye `main.tf`, `variables.tf`, `outputs.tf` y un README con requisitos y ejemplo de uso.

## Uso desde un módulo raíz

Configura el provider y las credenciales en tu proyecto consumidor y referencia el módulo con una ruta local, por ejemplo:

```hcl
module "network" {
  source = "../terraform-modules/aws/network"
  name   = "app"
}
```

Reemplaza la ruta y los argumentos según el proveedor elegido. Ejecuta `terraform init`, `terraform plan` y revisa el plan antes de aplicar. Los módulos no configuran credenciales ni crean recursos adicionales como gateways de salida, NAT o firewalls.

Consulta el README de cada proveedor para conocer sus variables, salidas y ejemplo completo:

- [AWS](aws/network/README.md)
- [Azure](azure/network/README.md)
- [Google Cloud](gcp/network/README.md)
