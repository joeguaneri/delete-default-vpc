provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-west-1" {
  force_destroy = true

  provider = aws.us-west-1
}

data "aws_internet_gateway" "default_us-west-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_us-west-1.id]
  }

  provider = aws.us-west-1
}

output default_igw_us-west-1 {
  value = data.aws_internet_gateway.default_us-west-1.id
}
