module "module1" {
  source = "./module1"
} //calling the module1

module "module2" {
  source = "./module2"
} //calling module2

provider "aws" {
  region = "us-east-1"
}
