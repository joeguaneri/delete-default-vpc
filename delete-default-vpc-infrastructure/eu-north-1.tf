provider "aws" {
  alias = "eu-north-1"
  region = "eu-north-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-north-1" {
  force_destroy = true

  provider = aws.eu-north-1
}

resource "aws_default_subnet" "default_eu-north-1a" {
  availability_zone = "eu-north-1a"
  force_destroy = true

  provider = aws.eu-north-1
}

resource "aws_default_subnet" "default_eu-north-1b" {
  availability_zone = "eu-north-1b"
  force_destroy = true

  provider = aws.eu-north-1
}

resource "aws_default_subnet" "default_eu-north-1c" {
  availability_zone = "eu-north-1c"
  force_destroy = true

  provider = aws.eu-north-1
}