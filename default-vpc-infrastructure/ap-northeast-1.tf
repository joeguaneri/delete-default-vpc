provider "aws" {
  alias = "ap-northeast-1"
  region = "ap-northeast-1"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-northeast-1" {
  force_destroy = true

  provider = aws.ap-northeast-1
}

data "aws_internet_gateway" "default_ap-northeast-1" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_ap-northeast-1.id]
  }

  provider = aws.ap-northeast-1
}

output default_igw_ap-northeast-1 {
  value = data.aws_internet_gateway.default_ap-northeast-1.id
}
