


provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "existing" {
  bucket = "sunil-bucket-zp0001"
  depends_on= [aws_s3_bucket.my_bucket]
}

output "existing_bucket_arn" {
  value = data.aws_s3_bucket.existing.arn
}

output "existing_bucket_region" {
  value = data.aws_s3_bucket.existing.region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sunil-bucket-zp0001"
  acl    = "private"
}

