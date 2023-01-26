# terraform-projects

##### These projects are to help me gain knowledge and experience on my road to becoming Hashicorp Terraform Certified.

## AWS-compute:

### The compute folder is one that houses the AWS EC2 compute module that references a handful of input variables and also has an output varaible. It currently creates one EC2 instance in a public subnet within a managed VPC.

## AWS-s3:

### The s3 folder is one that houses the AWS S3 module. It creates a S3 Bucket that has a buckent name that appends a random number at the end to help with keeping it globally unique, versioning turned on, and hosts a simple website.

## AWS-vpc:

### The vpc folder is one that houses the AWS VPC module that has some crucial outputs that get passed to the AWS-compute folder for the creation of the EC2 instance. It creates the VPC (with multiple AZs, public subnets and private subnets), and a Security Group with a custom rule.

#### I created all of these separate modules so that you can run it all together, or go into them separately and Terraform Apply them separately. **Both ways work properly**
