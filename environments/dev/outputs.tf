output "instance_public_ip" {
  description = "La IP pública de la instancia EC2 creada."
  # Remove ".main" from the line below
  value       = module.compute.aws_instance.public_ip
}

output "instance_id" {
  description = "El ID de la instancia EC2 creada."
  # Remove ".main" from the line below
  value       = module.compute.aws_instance.id
}
