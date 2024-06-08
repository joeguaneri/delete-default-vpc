provider "aws" {
  alias = "ap-southeast-2"
  region = "ap-southeast-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-southeast-2" {
  force_destroy = true

  provider = aws.ap-southeast-2
}

resource "aws_default_subnet" "default_ap-southeast-2a" {
  availability_zone = "ap-southeast-2a"
  force_destroy = true

  provider = aws.ap-southeast-2
}

resource "aws_default_subnet" "default_ap-southeast-2b" {
  availability_zone = "ap-southeast-2b"
  force_destroy = true

  provider = aws.ap-southeast-2
}

resource "aws_default_subnet" "default_ap-southeast-2c" {
  availability_zone = "ap-southeast-2c"
  force_destroy = true

  provider = aws.ap-southeast-2
}