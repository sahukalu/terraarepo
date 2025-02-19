# main.tf

# Specify the provider (AWS in this case)
provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# Define the S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Ensure this is globally unique
  acl    = "private"                # Set ACL (access control list)
  
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}
