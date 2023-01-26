provider "aws" {
  region = var.region

  default_tags {
    tags = {
      HCL-training = "module-creation"
    }
  }
}

module "vpc" {
  source = "./AWS-vpc"

}

module "s3" {
  source = "./AWS-s3"
}

module "compute" {
  source             = "./AWS-compute"
  vpc_public_subnets = module.vpc.vpc_public_subnets
  vpc_sg_ids         = module.vpc.vpc_sg_ids
}
