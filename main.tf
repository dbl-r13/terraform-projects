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
