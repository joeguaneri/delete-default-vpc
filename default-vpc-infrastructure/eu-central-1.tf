provider "aws" {
  alias = "eu-central-1"
  region = "eu-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_eu-central-1" {
  force_destroy = true

  provider = aws.eu-central-1
}

data "aws_internet_gateway" "default_eu-central-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_eu-central-1.id]
  }

  provider = aws.eu-central-1
}

output default_igw_eu-central-1 {
  value = data.aws_internet_gateway.default_eu-central-1.id
}
