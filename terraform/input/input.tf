//to declare a variable
variable "abc" {
  type = number  // it expects number only
} // empty variable declaration with out any default value , mention the datatype 'type'
// by default its string

//to access this variable

output "abc" {
  value = var.abc
} // this will ask for value after terraform apply command

variable "D" {}
output "D" {
  value = var.D
}