provider "aws" {
  alias = "eu-west-2"
  region = "eu-west-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-west-2" {
  force_destroy = true

  provider = aws.eu-west-2
}

resource "aws_default_subnet" "default_eu-west-2a" {
  availability_zone = "eu-west-2a"
  force_destroy = true

  provider = aws.eu-west-2
}

resource "aws_default_subnet" "default_eu-west-2b" {
  availability_zone = "eu-west-2b"
  force_destroy = true

  provider = aws.eu-west-2
}

resource "aws_default_subnet" "default_eu-west-2c" {
  availability_zone = "eu-west-2c"
  force_destroy = true

  provider = aws.eu-west-2
}
