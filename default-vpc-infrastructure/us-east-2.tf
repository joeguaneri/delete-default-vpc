provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_us-east-2" {
  force_destroy = true

  provider = aws.us-east-2
}

data "aws_internet_gateway" "default_us-east-2" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_us-east-2.id]
  }

  provider = aws.us-east-2
}

output default_igw_us-east-2 {
  value = data.aws_internet_gateway.default_us-east-2.id
}
