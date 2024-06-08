provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_us-west-2" {
  vpc_id = var.vpc_id

  provider = aws.us-west-2
}
