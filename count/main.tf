provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "creating_instance" {
  count         = 3
  ami           = "ami-0de41da4087a54e00" # Amazon Linux 2 (update for your region)
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance-${count.index + 1}"
  }
}
