provider "aws" {
  alias = "sa-east-1"
  region = "sa-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_sa-east-1" {
  force_destroy = true

  provider = aws.sa-east-1
}

resource "aws_default_subnet" "default_sa-east-1a" {
  availability_zone = "sa-east-1a"
  force_destroy = true

  provider = aws.sa-east-1
}

resource "aws_default_subnet" "default_sa-east-1b" {
  availability_zone = "sa-east-1b"
  force_destroy = true

  provider = aws.sa-east-1
}

resource "aws_default_subnet" "default_sa-east-1c" {
  availability_zone = "sa-east-1c"
  force_destroy = true

  provider = aws.sa-east-1
}
