provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      hashicorp-terrafrom = "module-use"
    }
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets


  tags = var.vpc_tags
}
