//resources..
//        resource name  local name
resource "aws_instance" "sample" {
  ami           = "ami-052ed3344670027b3"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]  //give security group name name here
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
//terraform apply - it first creates security grp
//what happens if we run terraform apply multiple time - it WONT create multiple instances
//why - terraform create state file- which stores the info of resources created , so when apply multiple times it
//cross check the resource