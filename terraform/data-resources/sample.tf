provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "example" {
  most_recent = true
  owners = ["811742389611"]
}

output "ami" {
  value = data.aws_ami.example.id
}