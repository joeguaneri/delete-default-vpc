provider "aws" {
  alias = "eu-west-3"
  region = "eu-west-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-west-3" {
  force_destroy = true

  provider = aws.eu-west-3
}

data "aws_internet_gateway" "default_eu-west-3" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_eu-west-3.id]
  }

  provider = aws.eu-west-3
}

output default_igw_eu-west-3 {
  value = data.aws_internet_gateway.default_eu-west-3.id
}
