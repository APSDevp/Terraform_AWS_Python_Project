variable "ami_id" {
  default = "ami-09a9858973b288bdd"
}

variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_id" {
  type = string
}
variable "security_group_id" {
  type = string
}
variable "public_subnet_id" {
  type = string
}

variable "keypair" {
default = "fet-jenkins"
}
