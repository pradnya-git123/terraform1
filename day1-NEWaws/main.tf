resource "aws_instance" "New_instance" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  key_name      = "MyFirstKeypair"
  tags = {
    Name = "newec2"
  }

}