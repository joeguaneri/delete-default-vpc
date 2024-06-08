provider "aws" {
  alias = "eu-west-2"
  region = "eu-west-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_eu-west-2" {
  vpc_id = var.vpc_id

  provider = aws.eu-west-2
}
