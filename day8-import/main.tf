provider "aws" {
    region = "us-west-1"
  
}
resource "aws_instance" "deeev" {
  ami = "ami-020fbc00dbecba358"
  instance_type = "t2.micro"
  key_name = "california_key"
  tags = {
    Name = "myimportec2"
  }
}