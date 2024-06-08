provider "aws" {
  alias = "ap-northeast-1"
  region = "ap-northeast-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-northeast-1" {
  vpc_id = var.vpc_id

  provider = aws.ap-northeast-1
}