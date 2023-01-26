terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    region = var.region #need to dynamically reference this
    bucket = "var.backendbucket.name"
    key    = "<Path to Key Here>"


  }

}
