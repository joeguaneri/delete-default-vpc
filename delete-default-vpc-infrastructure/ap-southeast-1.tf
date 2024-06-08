provider "aws" {
  alias = "ap-southeast-1"
  region = "ap-southeast-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-southeast-1" {
  force_destroy = true

  provider = aws.ap-southeast-1
}

resource "aws_default_subnet" "default_ap-southeast-1a" {
  availability_zone = "ap-southeast-1a"
  force_destroy = true

  provider = aws.ap-southeast-1
}

resource "aws_default_subnet" "default_ap-southeast-1b" {
  availability_zone = "ap-southeast-1b"
  force_destroy = true

  provider = aws.ap-southeast-1
}

resource "aws_default_subnet" "default_ap-southeast-1c" {
  availability_zone = "ap-southeast-1c"
  force_destroy = true

  provider = aws.ap-southeast-1
}