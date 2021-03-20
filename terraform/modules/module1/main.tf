//resources..
//        resource name  local name
resource "aws_instance" "sample" {
  ami           = "ami-052ed3344670027b3" // AMI Devops-Practice
  instance_type = "t2.micro"
}