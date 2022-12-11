module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = join("-", ["terraform-s3-bucket", random_integer.rand-num.id])

  versioning = {
    enabled = true
  }
  website = {
    index_document = "index.html"
    error_document = "error.html"

  }
  tags = {
    Name = "Terraform S3 Bucket"
  }
}

resource "random_integer" "rand-num" {
  min = 1
  max = 5000
}
