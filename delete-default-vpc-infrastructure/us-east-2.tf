provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-east-2" {
  force_destroy = true

  provider = aws.us-east-2
}

resource "aws_default_subnet" "default_us-east-2a" {
  availability_zone = "us-east-2a"
  force_destroy = true

  provider = aws.us-east-2
}

resource "aws_default_subnet" "default_us-east-2b" {
  availability_zone = "us-east-2b"
  force_destroy = true

  provider = aws.us-east-2
}

resource "aws_default_subnet" "default_us-east-2c" {
  availability_zone = "us-east-2c"
  force_destroy = true

  provider = aws.us-east-2
}
