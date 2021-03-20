module "module1" {
  source = "./module1"
} //calling the module1

provider "aws" {
  region = "us-east-1"
}
