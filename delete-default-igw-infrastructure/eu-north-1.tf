provider "aws" {
  alias = "eu-north-1"
  region = "eu-north-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_eu-north-1" {
  vpc_id = var.vpc_id

  provider = aws.eu-north-1
}
