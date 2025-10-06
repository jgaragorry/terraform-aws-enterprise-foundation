variable "vpc_cidr" {
  type = string
}
variable "subnets" {
  type = list(string)
}
variable "azs" {
  type = list(string)
}
variable "tags" {
  type = map(string)
}
