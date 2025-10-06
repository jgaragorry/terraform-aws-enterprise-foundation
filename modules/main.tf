locals {
  common_tags = {
    Environment = var.environment
    Project     = var.project
    CostCenter  = var.cost_center
    Owner       = var.owner
    ManagedBy   = "Terraform"
  }
}
