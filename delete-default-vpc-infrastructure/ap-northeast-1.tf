provider "aws" {
  alias = "ap-northeast-1"
  region = "ap-northeast-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-northeast-1" {
  force_destroy = true

  provider = aws.ap-northeast-1
}

resource "aws_default_subnet" "default_ap-northeast-1a" {
  availability_zone = "ap-northeast-1a"
  force_destroy = true

  provider = aws.ap-northeast-1
}

resource "aws_default_subnet" "default_ap-northeast-1c" {
  availability_zone = "ap-northeast-1c"
  force_destroy = true

  provider = aws.ap-northeast-1
}

resource "aws_default_subnet" "default_ap-northeast-1d" {
  availability_zone = "ap-northeast-1d"
  force_destroy = true

  provider = aws.ap-northeast-1
}