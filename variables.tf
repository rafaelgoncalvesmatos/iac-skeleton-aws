variable "s3_region" {
  type    = "string"
  default = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
}
