provider "aws" {
  alias = "ap-northeast-2"
  region = "ap-northeast-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-northeast-2" {
  force_destroy = true

  provider = aws.ap-northeast-2
}

resource "aws_default_subnet" "default_ap-northeast-2a" {
  availability_zone = "ap-northeast-2a"
  force_destroy = true

  provider = aws.ap-northeast-2
}

resource "aws_default_subnet" "default_ap-northeast-2b" {
  availability_zone = "ap-northeast-2b"
  force_destroy = true

  provider = aws.ap-northeast-2
}

resource "aws_default_subnet" "default_ap-northeast-2c" {
  availability_zone = "ap-northeast-2c"
  force_destroy = true

  provider = aws.ap-northeast-2
}

resource "aws_default_subnet" "default_ap-northeast-2d" {
  availability_zone = "ap-northeast-2d"
  force_destroy = true

  provider = aws.ap-northeast-2
}