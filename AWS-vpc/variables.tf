variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "terraform-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for the VPC"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for the VPC"
  type        = list(string)
  default     = ["10.0.12.0/24", "10.0.14.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for the VPC"
  type        = list(string)
  default     = ["10.0.13.0/24", "10.0.15.0/24"]
}


variable "vpc_tags" {
  description = "Tags to apply to resources created by the VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
