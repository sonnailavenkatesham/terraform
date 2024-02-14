variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  default = ["public", "private"]
}

variable "public_subnet_cidr" {
    default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnet_cidr" {
    default = ["10.0.10.0/24", "10.0.11.0/24"]
}