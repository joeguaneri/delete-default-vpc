provider "aws" {
  alias = "eu-west-2"
  region = "eu-west-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-west-2" {
  force_destroy = true

  provider = aws.eu-west-2
}

data "aws_internet_gateway" "default_eu-west-2" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_eu-west-2.id]
  }

  provider = aws.eu-west-2
}

output default_igw_eu-west-2 {
  value = data.aws_internet_gateway.default_eu-west-2.id
}
