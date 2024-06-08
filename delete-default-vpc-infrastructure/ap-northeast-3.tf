provider "aws" {
  alias = "ap-northeast-3"
  region = "ap-northeast-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-northeast-3" {
  force_destroy = true

  provider = aws.ap-northeast-3
}

resource "aws_default_subnet" "default_ap-northeast-3a" {
  availability_zone = "ap-northeast-3a"
  force_destroy = true

  provider = aws.ap-northeast-3
}

resource "aws_default_subnet" "default_ap-northeast-3b" {
  availability_zone = "ap-northeast-3b"
  force_destroy = true

  provider = aws.ap-northeast-3
}

resource "aws_default_subnet" "default_ap-northeast-3c" {
  availability_zone = "ap-northeast-3c"
  force_destroy = true

  provider = aws.ap-northeast-3
}