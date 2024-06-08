provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-west-1" {
  force_destroy = true

  provider = aws.us-west-1
}

resource "aws_default_subnet" "default_us-west-1a" {
  availability_zone = "us-west-1a"
  force_destroy = true

  provider = aws.us-west-1
}

resource "aws_default_subnet" "default_us-west-1b" {
  availability_zone = "us-west-1b"
  force_destroy = true

  provider = aws.us-west-1
}

resource "aws_default_subnet" "default_us-west-1c" {
  availability_zone = "us-west-1c"
  force_destroy = true

  provider = aws.us-west-1
}
