provider "aws" {
  alias = "ap-northeast-3"
  region = "ap-northeast-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-northeast-3" {
  vpc_id = var.vpc_id

  provider = aws.ap-northeast-3
}
