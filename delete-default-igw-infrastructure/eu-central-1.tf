provider "aws" {
  alias = "eu-central-1"
  region = "eu-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_eu-central-1" {
  vpc_id = var.vpc_id

  provider = aws.eu-central-1
}
