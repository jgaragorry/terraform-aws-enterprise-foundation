# modules/compute/variables.tf

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "ssh_allowed_ip" {
  description = "IP permitida para acceso SSH."
  type        = string
}
variable "key_name" {
  description = "Nombre del par de claves de EC2 para asociar a la instancia."
  type        = string
}
