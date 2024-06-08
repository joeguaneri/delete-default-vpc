provider "aws" {
  alias = "ap-southeast-2"
  region = "ap-southeast-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_internet_gateway "default_ap-southeast-2" {
  vpc_id = var.vpc_id

  provider = aws.ap-southeast-2
}
