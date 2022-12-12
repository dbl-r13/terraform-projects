module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "terraform-ec2"

  ami                    = var.ec2-ami
  instance_type          = var.ec2-type
  key_name               = var.keyname
  vpc_security_group_ids = ["sg-0b7dc410f33b14468"]
  subnet_id              = "subnet-0c61deaf1f2c5eb27"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
