provider "aws" {
  region = "${var.s3_region}"
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"

  tags {
    Name = "Ubuntu"
  }
}
