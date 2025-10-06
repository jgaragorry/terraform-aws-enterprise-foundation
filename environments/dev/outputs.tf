# environments/dev/outputs.tf

output "instance_public_ip" {
  description = "La IP pública de la instancia EC2 creada."
  value       = module.compute.aws_instance.main.public_ip
}

output "instance_id" {
  description = "El ID de la instancia EC2 creada."
  value       = module.compute.aws_instance.main.id
}
