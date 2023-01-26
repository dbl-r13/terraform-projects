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

module "vpc_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "testing-service"
  description = "Security group for testing-service with custom ports open within VPC."
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = [var.vpc_cidr]
  ingress_rules       = ["http-80-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "Testing-service ports"
      cidr_blocks = var.vpc_cidr
    }
  ]
}
