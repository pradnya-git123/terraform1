terraform {     
    backend "s3" {
   bucket         = "xxyyaa"  # must exist already
   key            = "dev/terraform.tfstate"       # path to your state file in the bucket
 region         = "us-west-1"
    
 }
}