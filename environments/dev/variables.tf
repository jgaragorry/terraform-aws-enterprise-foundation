variable "instance_type" {
  description = "Tipo de instancia EC2 a desplegar."
  type        = string
}

variable "vpc_cidr" {
  description = "Bloque CIDR para la VPC."
  type        = string
}

variable "subnet_cidrs" {
  description = "Lista de bloques CIDR para las subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "Zonas de disponibilidad para las subnets."
  type        = list(string)
}

variable "my_ip_for_ssh" {
  description = "Tu IP pública para permitir el acceso SSH."
  type        = string
}
variable "key_name" {
  description = "Nombre del par de claves de EC2."
  type        = string
}
