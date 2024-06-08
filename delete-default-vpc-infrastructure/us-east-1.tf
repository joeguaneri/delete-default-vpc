provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-east-1" {
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1a" {
  availability_zone = "us-east-1a"
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1b" {
  availability_zone = "us-east-1b"
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1c" {
  availability_zone = "us-east-1c"
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1d" {
  availability_zone = "us-east-1d"
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1e" {
  availability_zone = "us-east-1e"
  force_destroy = true

  provider = aws.us-east-1
}

resource "aws_default_subnet" "default_us-east-1f" {
  availability_zone = "us-east-1f"
  force_destroy = true

  provider = aws.us-east-1
}