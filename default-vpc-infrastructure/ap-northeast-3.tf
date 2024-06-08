provider "aws" {
  alias = "ap-northeast-3"
  region = "ap-northeast-3"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-northeast-3" {
  force_destroy = true

  provider = aws.ap-northeast-3
}

data "aws_internet_gateway" "default_ap-northeast-3" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_ap-northeast-3.id]
  }

  provider = aws.ap-northeast-3
}

output default_igw_ap-northeast-3 {
  value = data.aws_internet_gateway.default_ap-northeast-3.id
}
