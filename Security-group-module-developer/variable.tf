variable "sg_name" {
  
}
variable "description" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "project_name" {
    
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "DEV"
    Terraform = true
  }
}

variable "sg_ingress" {
  type = list
  default = [
    {
    description      = "traffice from SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    {
    description      = "TLS from HTTPS"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    {
    description      = "Traffic from HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
}
