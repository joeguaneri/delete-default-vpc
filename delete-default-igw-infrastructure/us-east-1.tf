provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_us-east-1" {
  vpc_id = var.vpc_id

  provider = aws.us-east-1
}