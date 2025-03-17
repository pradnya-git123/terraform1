variable "ami" {
    description = "inserting ami values"
     type = string
     default = "ami-08b5b3a93ed654d19"
}
variable "instance_type" {
    description = "inserting value of instance type"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    description = "inserting value of key name"
    type = string
    default = "terraday1"
  
}