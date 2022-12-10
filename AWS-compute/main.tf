module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "terraform-ec2"

  ami                    = "ami-0c7575396f78f3c56"
  instance_type          = "t2.micro"
  key_name               = "Terraform"
  vpc_security_group_ids = ["sg-0b7dc410f33b14468"]
  subnet_id              = "subnet-0c61deaf1f2c5eb27"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
