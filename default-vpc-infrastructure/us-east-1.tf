provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-east-1" {
  force_destroy = true

  provider = aws.us-east-1
}

data "aws_internet_gateway" "default_us-east-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_us-east-1.id]
  }

  provider = aws.us-east-1
}

output default_igw_us-east-1 {
  value = data.aws_internet_gateway.default_us-east-1.id
}