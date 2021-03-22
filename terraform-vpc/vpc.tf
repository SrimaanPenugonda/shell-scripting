//create VPC 192.168.0.0/24
resource "aws_vpc" "main" {
  cidr_block            = var.VPC_CIDR
  tags                  = {
    Name                = "${var.PROJECT_NAME}-${var.ENV}-vpc"
    Environment         = var.ENV
    Provisioned         = "Terraform"
  }
}