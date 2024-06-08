provider "aws" {
  alias = "ca-central-1"
  region = "ca-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ca-central-1" {
  vpc_id = var.vpc_id

  provider = aws.ca-central-1
}
