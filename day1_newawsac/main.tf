resource "aws_instance" "firstec2" {
    ami = "ami-068c0051b15cdb816"
    instance_type = "t3.micro"
    key_name = "MyfirstKeypair"

    tags = {
        Name = "firstec2instance"
    }
  
}