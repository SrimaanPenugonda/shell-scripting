variable "a" {
  default = 100
} //decalre a variable

output "a" {
  value = var.a
} //access a variable var.a

// types of variables
//1.normal

variable "b" {
  default = 200
}
//2.list
variable "list"{
  default = [100,"abcd",true]
} // list will have diff data types

//to access list of variables

output "list_1" {
  value = var.list[1]
}
output "list_2" {
  value = var.list[2]
}
output "list" {
  value = var.list
} //to print full list
// 3.map
variable "map" {
  default ={
    course_name = "devops",
    trainer = "raghu",
    student = "srimaan"
  }
}
output "COURSE_NAME" {
  value = var.map["course_name"]
}
output "TRAINER" {
  value = var.map["trainer"]
}
output "STUDENT" {
  value = var.map["student"]
}
