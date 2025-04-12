resource "aws_s3_bucket" "djshbdhwjns" {
    bucket = "dynamodbbucketfileconceptsss"
  
}
resource "aws_dynamodb_table" "dynamolock" {
    name = "terra-state-lock-dynamo"
    hash_key = "LockID"
    read_capacity = 20
    write_capacity = 20
    attribute {
        name = "LockID"
        type = "S"
      
    }


  
}