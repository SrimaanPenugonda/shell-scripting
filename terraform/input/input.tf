//to declare a variable
variable "abc" {
  type = number  // it expects number only
} // empty variable declaration with out any default value , mention the datatype 'type'

//1.to access this variable over CLI
output "abc" {
  value = var.abc
} // this will ask for value after terraform apply command,

variable "D" {} // by default it takes as string
output "D" {
  value = var.D
}
//2.to pass as argument
//terraform -auto-approve -var abc1=data
variable "abc1" {}
output "abc1" {
  value = var.abc1
}
//3.pass variable from file
variable "abc2" {}
output "abc2" {
  value = var.abc2
}
variable "abc3" {}
output "abc3" {
  value = var.abc3
}