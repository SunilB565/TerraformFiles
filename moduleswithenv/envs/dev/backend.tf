terraform {
  backend "s3" {
    bucket         = "zptfstate001"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
  }
}
