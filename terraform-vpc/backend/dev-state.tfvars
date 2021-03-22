bucket           = "srimaan-terraform-state-files" //bucket name to store state files
key              = "vpc/dev/terraform.tfstate" //path in bucket
region           = "us-east-1"
dynamodb_table   = "terraform"  //dynamodb table name