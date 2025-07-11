provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "existing" {
  bucket = "existing-bucket-name-123"
}

output "existing_bucket_arn" {
  value = data.aws_s3_bucket.existing.arn
}

output "existing_bucket_region" {
  value = data.aws_s3_bucket.existing.region
}