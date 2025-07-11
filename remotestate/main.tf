provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-074c93c8172f508b3" # Amazon Linux 2 (update for your region)
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance-1"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sunil-bucket-004"
  acl    = "private"
}
