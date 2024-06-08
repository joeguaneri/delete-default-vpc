provider "aws" {
  alias = "sa-east-1"
  region = "sa-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_sa-east-1" {
  vpc_id = var.vpc_id

  provider = aws.sa-east-1
}
