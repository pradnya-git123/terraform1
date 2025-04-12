resource "aws_s3_bucket" "my_bucket" {
  bucket = "xxyyaa"  # Must be globally unique

  tags = {
    Name        = "My Versioned Bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
} 
