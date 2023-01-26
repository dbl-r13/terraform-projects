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
  source = "./AWS-compute"
}
