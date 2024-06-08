provider "aws" {
  alias = "ca-central-1"
  region = "ca-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ca-central-1" {
  force_destroy = true

  provider = aws.ca-central-1
}

resource "aws_default_subnet" "default_ca-central-1a" {
  availability_zone = "ca-central-1a"
  force_destroy = true

  provider = aws.ca-central-1
}

resource "aws_default_subnet" "default_ca-central-1b" {
  availability_zone = "ca-central-1b"
  force_destroy = true

  provider = aws.ca-central-1
}

resource "aws_default_subnet" "default_ca-central-1d" {
  availability_zone = "ca-central-1d"
  force_destroy = true

  provider = aws.ca-central-1
}