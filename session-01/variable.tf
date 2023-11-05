variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "web"
        Environment = "Dev"
        Terraform = true
        Project = "Roboshop"
        }
}

variable "instance_name" {
    type = list(string)
    default = ["mongodb", "cart", "catalogue", "user", "mysql", "redis", "rabbitMQ", "payment", "shipping", "web"]
}