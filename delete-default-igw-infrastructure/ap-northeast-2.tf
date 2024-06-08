provider "aws" {
  alias = "ap-northeast-2"
  region = "ap-northeast-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-northeast-2" {
  vpc_id = var.vpc_id

  provider = aws.ap-northeast-2
}