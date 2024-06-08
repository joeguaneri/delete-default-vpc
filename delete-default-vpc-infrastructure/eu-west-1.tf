provider "aws" {
  alias = "eu-west-1"
  region = "eu-west-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-west-1" {
  force_destroy = true

  provider = aws.eu-west-1
}

resource "aws_default_subnet" "default_eu-west-1a" {
  availability_zone = "eu-west-1a"
  force_destroy = true

  provider = aws.eu-west-1
}

resource "aws_default_subnet" "default_eu-west-1b" {
  availability_zone = "eu-west-1b"
  force_destroy = true

  provider = aws.eu-west-1
}

resource "aws_default_subnet" "default_eu-west-1c" {
  availability_zone = "eu-west-1c"
  force_destroy = true

  provider = aws.eu-west-1
}