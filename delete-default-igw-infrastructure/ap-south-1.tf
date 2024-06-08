provider "aws" {
  alias = "ap-south-1"
  region = "ap-south-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-south-1" {
  vpc_id = var.vpc_id

  provider = aws.ap-south-1
}