terraform {
  backend "s3" {
    bucket         = "zptfstate001"
    key            = "tf/terraform.tfstate"
    region         = "us-east-1"
  }
}
