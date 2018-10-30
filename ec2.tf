provider "aws" {
  region = "${var.s3_region}"
}

resource "aws_instance" "web" {
  ami           = "${var.ami_instance}"
  instance_type = "t2.micro"
  key_name      = "ghost"

  tags {
    Name  = "Ubuntu"
    Type  = "Skeleton"
  }
}
