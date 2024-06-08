provider "aws" {
  alias = "ap-south-1"
  region = "ap-south-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-south-1" {
  force_destroy = true

  provider = aws.ap-south-1
}

data "aws_internet_gateway" "default_ap-south-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_ap-south-1.id]
  }

  provider = aws.ap-south-1
}

output default_igw_ap-south-1 {
  value = data.aws_internet_gateway.default_ap-south-1.id
}
