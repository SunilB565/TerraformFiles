provider "aws" {
  region = "us-east-1"
}

module "kms_key" {
  source     = "../../modules/kms_key"
  alias_name = var.kms_alias
}

module "s3_bucket" {
  source       = "../../modules/s3_bucket"
  bucket_name  = var.bucket_name
}
