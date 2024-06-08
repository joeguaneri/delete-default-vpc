provider "aws" {
  alias = "ca-central-1"
  region = "ca-central-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ca-central-1" {
  force_destroy = true

  provider = aws.ca-central-1
}

data "aws_internet_gateway" "default_ca-central-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_ca-central-1.id]
  }

  provider = aws.ca-central-1
}

output default_igw_ca-central-1 {
  value = data.aws_internet_gateway.default_ca-central-1.id
}
