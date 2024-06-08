provider "aws" {
  alias = "eu-central-1"
  region = "eu-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-central-1" {
  force_destroy = true

  provider = aws.eu-central-1
}

resource "aws_default_subnet" "default_eu-central-1a" {
  availability_zone = "eu-central-1a"
  force_destroy = true

  provider = aws.eu-central-1
}

resource "aws_default_subnet" "default_eu-central-1b" {
  availability_zone = "eu-central-1b"
  force_destroy = true

  provider = aws.eu-central-1
}

resource "aws_default_subnet" "default_eu-central-1c" {
  availability_zone = "eu-central-1c"
  force_destroy = true

  provider = aws.eu-central-1
}