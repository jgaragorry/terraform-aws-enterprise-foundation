# modules/compute/outputs.tf

output "aws_instance" {
  description = "Referencia completa al recurso de la instancia EC2."
  value       = aws_instance.main
}
