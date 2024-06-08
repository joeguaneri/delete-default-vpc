provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_us-west-1" {
  vpc_id = var.vpc_id

  provider = aws.us-west-1
}
