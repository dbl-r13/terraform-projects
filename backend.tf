terraform {
required_version = ">=0.12.0"
backend "s3" {
region = "us-east-1" #need to dynamically reference this
bucket = "var.backendbucket.name"
key = "<Path to Key Here>"


}

}
