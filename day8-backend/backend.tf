terraform {
  backend "s3" {
    bucket = "dynamodbbucketfileconceptsss"
    region = "us-west-1"
    key = "dynamo/terraform.tf state"
    dynamodb_table = "terra-state-lock-dynamo"
    
  }
}