terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "roboshop-backend"
    key    = "vpc-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}