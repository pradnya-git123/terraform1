resource "aws_instance" "taergetrssource" {
    ami ="ami-0ce45259f491c3d4f"
    instance_type = "t2.micro"
    key_name = "california_key"
  
}
resource "aws_s3_bucket" "diiv" {
    bucket = "234hbfdh766nr"
  depends_on = [ aws_instance.taergetrssource ]
}