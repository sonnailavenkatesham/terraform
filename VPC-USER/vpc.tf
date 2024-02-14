module "vpc" {
  source = "git::https://github.com/sonnailavenkatesham/ADVANCE-TERRAFORM/tree/master/Developer-module-vpc"

  vpc_cidr_block =var.vpc_cidr_block
  public_subnet_cidr = var.public_subnet_cidr
  subnet_name = var.subnet_name
  private_subnet_cidr = var.private_subnet_cidr
}