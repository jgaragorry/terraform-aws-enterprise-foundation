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
