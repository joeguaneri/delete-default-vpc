provider "aws" {
  alias = "ap-south-1"
  region = "ap-south-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-south-1" {
  force_destroy = true

  provider = aws.ap-south-1
}

resource "aws_default_subnet" "default_ap-south-1a" {
  availability_zone = "ap-south-1a"
  force_destroy = true

  provider = aws.ap-south-1
}

resource "aws_default_subnet" "default_ap-south-1b" {
  availability_zone = "ap-south-1b"
  force_destroy = true

  provider = aws.ap-south-1
}

resource "aws_default_subnet" "default_ap-south-1c" {
  availability_zone = "ap-south-1c"
  force_destroy = true

  provider = aws.ap-south-1
}