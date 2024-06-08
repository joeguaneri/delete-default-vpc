provider "aws" {
  alias = "eu-north-1"
  region = "eu-north-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-north-1" {
  force_destroy = true

  provider = aws.eu-north-1
}

data "aws_internet_gateway" "default_eu-north-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_eu-north-1.id]
  }

  provider = aws.eu-north-1
}

output default_igw_eu-north-1 {
  value = data.aws_internet_gateway.default_eu-north-1.id
}
