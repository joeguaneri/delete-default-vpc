provider "aws" {
  alias = "eu-west-3"
  region = "eu-west-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-west-3" {
  force_destroy = true

  provider = aws.eu-west-3
}

resource "aws_default_subnet" "default_eu-west-3a" {
  availability_zone = "eu-west-3a"
  force_destroy = true

  provider = aws.eu-west-3
}

resource "aws_default_subnet" "default_eu-west-3b" {
  availability_zone = "eu-west-3b"
  force_destroy = true

  provider = aws.eu-west-3
}

resource "aws_default_subnet" "default_eu-west-3c" {
  availability_zone = "eu-west-3c"
  force_destroy = true

  provider = aws.eu-west-3
}