module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "terraform-ec2"

  ami                    = var.ec2-ami
  instance_type          = var.ec2-type
  key_name               = var.keyname
  vpc_security_group_ids = [var.vpc_sg_ids]
  subnet_id              = var.vpc_public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
