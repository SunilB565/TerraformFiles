provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.s3_bucket_names)

  bucket = each.value
  acl    = "private"

  tags = {
    Name        = each.value
    Environment = "dev"
  }
}
