//resources..
//        resource name  local name
resource "aws_instance" "sample" {
  ami           = "ami-052ed3344670027b3" // AMI Devops-Practice
  instance_type = "t3.micro"
}

output "PUBLIC_IP" {
  value = aws_instance.sample.public_ip
} // this output wont print rather pass to root module