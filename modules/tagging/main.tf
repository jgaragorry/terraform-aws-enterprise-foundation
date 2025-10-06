# Este output combina las variables de entrada en un mapa de etiquetas
output "tags" {
  description = "Consistent tags for all resources"
  value = {
    Environment = var.environment
    Project     = var.project
    CostCenter  = var.cost_center
    Owner       = var.owner
    ManagedBy   = "Terraform"
  }
}
