//to declare a variable
variable "abc" {} // empty variable declaration with out default value

//to access this variable

output "abc" {
  type = number  // it expects number only
  value = var.abc
} // this will ask for value after terraform apply command