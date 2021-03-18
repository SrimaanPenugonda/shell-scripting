provider "aws" {
  region = "us-east-1"
}

//create bucket
resource "aws_s3_bucket" "b" {
  bucket = "srimaan_s3_1"
  acl = "private"

  versioning {
    enabled = true
  }
}
//upload state file to s3 bucket
terraform {
  backend "s3" {
    bucket = "srimaan_s3_1" //bucketname
    key    = "sample/terraform.tfstate" //path in bucket
    region = "us-east-1"
  }
}