variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "cost_center" {
  description = "Cost center for billing"
  type        = string
}
variable "owner" {
  description = "Owner of the resources"
  type        = string
}
