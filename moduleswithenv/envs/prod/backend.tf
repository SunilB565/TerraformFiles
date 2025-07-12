terraform {
  backend "s3" {
    bucket         = "zptfstate001"
    key            = "envs/prod/terraform.tfstate"
    region         = "us-east-1"
  }
}
