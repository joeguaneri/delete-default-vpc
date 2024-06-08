provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_us-east-2" {
  vpc_id = var.vpc_id

  provider = aws.us-east-2
}
