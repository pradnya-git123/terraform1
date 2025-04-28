# resource "aws_instance" "" {
#     ami ="ami-0ce45259f491c3d4f"
#     instance_type = "t2.micro"
#     key_name = "california_key"
  
# }
data "aws_subnet" "selected" {
    filter {
        name = "tag:Name"
    values = ["my-cali-subnet"]  
    }
  
}
resource "aws_instance" "data-source" {
     ami ="ami-0ce45259f491c3d4f"
     instance_type = "t2.micro"
    key_name = "california_key"
    subnet_id = "data.aws_subnet.selected"

    tags = {
      Name = "data-fetch-instance"
    }
}