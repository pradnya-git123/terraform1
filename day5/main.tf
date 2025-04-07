
  # Create the S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "xxyyaa"  # Must be globally unique

  tags = {
    Name        = "My Versioned Bucket"
    Environment = "Dev"
  }
}
# Enable Versioning on the Bucket
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
} 
# backend "s3" {
 #   bucket         = "my-terraform-state-bucket"  # must exist already
  #  key            = "dev/terraform.tfstate"       # path to your state file in the bucket
   # region         = "us-east-1"
    
 # }
#}