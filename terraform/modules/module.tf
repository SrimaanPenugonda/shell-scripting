module "module1" {
  source         = "./module1"
  INSTANCE_TYPE  = "t3.micro"  // pass the info to sub module
} //calling the module1

module "module2" {
  source = "./module2"
} //calling module2

provider "aws" {
  region = "us-east-1"
}

//access the public ip from sub module
output "PUBLIC_IP" {
  value = module.module2.PUBLIC_IP //access the public ip from module2
} //- this public ip can be shared to module1 also