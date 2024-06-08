provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-west-2" {
  force_destroy = true

  provider = aws.us-west-2
}

resource "aws_default_subnet" "default_us-west-2a" {
  availability_zone = "us-west-2a"
  force_destroy = true

  provider = aws.us-west-2
}

resource "aws_default_subnet" "default_us-west-2b" {
  availability_zone = "us-west-2b"
  force_destroy = true

  provider = aws.us-west-2
}

resource "aws_default_subnet" "default_us-west-2c" {
  availability_zone = "us-west-2c"
  force_destroy = true

  provider = aws.us-west-2
}

resource "aws_default_subnet" "default_us-west-2d" {
  availability_zone = "us-west-2d"
  force_destroy = true

  provider = aws.us-west-2
}
