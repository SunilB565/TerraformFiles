provider "aws" {
  region = "us-east-1"
}

resource "aws_kms_key" "my_key" {
  description         = "KMS key for S3 encryption"
  enable_key_rotation = true
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "depends-on-example-bucket-12345"
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.my_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.my_key.arn
    }
  }

  depends_on = [aws_kms_key.my_key]  # 👈 explicitly wait for KMS key
}