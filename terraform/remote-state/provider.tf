//provider should be declared - like region name
provider "aws" {
  region = "us-east-1"
}

//upload state file to s3 bucket
terraform {
  backend "s3" {
    bucket = "srimaan-s3-2" //bucket name to store state files
    key    = "sample/terraform.tfstate" //path in bucket
    region = "us-east-1"
    dynamodb_table = "terraform"  //dynamodb table name
  }
}
