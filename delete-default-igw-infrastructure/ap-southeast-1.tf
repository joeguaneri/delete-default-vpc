provider "aws" {
  alias = "ap-southeast-1"
  region = "ap-southeast-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-southeast-1" {
  vpc_id = var.vpc_id

  provider = aws.ap-southeast-1
}
