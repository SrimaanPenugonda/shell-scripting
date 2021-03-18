provider "aws" {
  region = "us-east-1"
}


//upload state file to s3 bucket
terraform {
  backend "s3" {
    bucket = "srimaan_s3_1" //bucketname
    key    = "sample/terraform.tfstate" //path in bucket
    region = "us-east-1"
  }
}