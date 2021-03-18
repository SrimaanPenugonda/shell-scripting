provider "aws" {
  region = "us-east-1"
}

//upload state file to s3 bucket
terraform {
  backend "s3" {
    bucket = "srimaan-s3-1" //bucketname
    key    = "sample/terraform.tfstate" //path in bucket
    region = "us-east-1"
  }
}