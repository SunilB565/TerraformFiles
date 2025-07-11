provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-output-example-bucket-123456"
  acl    = "private"

  tags = {
    Name = "MyOutputBucket"
    Env  = "dev"
  }
}

output "bucket_name" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.example.id
}

output "bucket_arn" {
  description = "The ARN of the created S3 bucket"
  value       = aws_s3_bucket.example.arn
}