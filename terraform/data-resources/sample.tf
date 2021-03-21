provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "example" {
  most_recent = true
  owners = ["973714476881"]
}

output "ami_id" {
  value = data.aws_ami.example.id
}