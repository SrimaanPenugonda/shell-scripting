//resources..
//        resource name  local name
resource "aws_instance" "sample" {
  ami           = "ami-052ed3344670027b3" // AMI Devops-Practice
  instance_type = "t2.micro"
}
resource "aws_instance" "sample1" {
  ami           = "ami-052ed3344670027b3" // AMI Devops-Practice
  instance_type = var.INSTANCE_TYPE //use the variable
}

variable "INSTANCE_TYPE" {} //declare a variable defined in root module