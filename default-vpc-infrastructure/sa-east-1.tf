provider "aws" {
  alias = "sa-east-1"
  region = "sa-east-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_sa-east-1" {
  force_destroy = true

  provider = aws.sa-east-1
}

data "aws_internet_gateway" "default_sa-east-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_sa-east-1.id]
  }

  provider = aws.sa-east-1
}

output default_igw_sa-east-1 {
  value = data.aws_internet_gateway.default_sa-east-1.id
}
