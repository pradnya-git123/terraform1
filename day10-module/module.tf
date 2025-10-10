module "name" {
  source        = "../day-2"
  ami           = "ami-0ce45259f491c3d4f"
  instance_type = "t2.micro"
  key_name      = "california_key"
 

  
}
# resource "aws_instance" "example" {
#   ami           = module.name.ami
#   instance_type = module.name.instance_type
#   key_name      = module.name.key_name


#   tags = {
#     Name = "ExampleInstance"
#   }
# }
