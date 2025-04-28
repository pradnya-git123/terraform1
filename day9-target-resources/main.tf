resource "aws_instance" "taergetrssource" {
    ami ="ami-0ce45259f491c3d4f"
    instance_type = "t2.micro"
    key_name = "california_key"
  
}
resource "aws_s3_bucket" "diiv" {
    bucket = "234hbfdh766nr"
  
}
# If we want to create or destroy any specific resourse in terraform configuration file so simply we can use target resource block 
 # for ex= terraform apply --target=aws_s3_bucket.diiv
 #     OR  terraform destroy --target=aws_s3_bucket.diiv   
