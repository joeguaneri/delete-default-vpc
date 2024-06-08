provider "aws" {
  alias = "eu-west-3"
  region = "eu-west-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_eu-west-3" {
  vpc_id = var.vpc_id

  provider = aws.eu-west-3
}
