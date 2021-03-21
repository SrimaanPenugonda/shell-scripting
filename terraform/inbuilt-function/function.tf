provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami                = "ami-052ed3344670027b3"
  instance_type      = "t3.micro"
  tags = {
    Name  = upper(var.name) //upper function
  }
}

variable "name" {
  default = "sample"
}
//terraform console  - give on CLI to enter into terraform console
