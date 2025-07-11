provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name  # <-- Replace with a globally unique name
  acl    = "private"

  tags = {
    Name        = "MyDemoBucket"
    Environment = "Dev"
  }
}
