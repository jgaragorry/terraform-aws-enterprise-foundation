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
