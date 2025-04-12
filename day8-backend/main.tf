resource "aws_instance" "xxsws" {
    ami = "ami-020fbc00dbecba358"
    instance_type = "t2.micro"
    key_name = "california_key"
  
}
