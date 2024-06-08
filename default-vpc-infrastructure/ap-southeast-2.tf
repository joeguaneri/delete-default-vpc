provider "aws" {
  alias = "ap-southeast-2"
  region = "ap-southeast-2"
  assume_role {
    role_arn = var.role_arn
  }
}

resource aws_default_vpc "default_vpc_ap-southeast-2" {
  force_destroy = true

  provider = aws.ap-southeast-2
}

data "aws_internet_gateway" "default_ap-southeast-2" {
  filter {
    name   = "attachment.vpc-id"
    values = [aws_default_vpc.default_vpc_ap-southeast-2.id]
  }

  provider = aws.ap-southeast-2
}

output default_igw_ap-southeast-2 {
  value = data.aws_internet_gateway.default_ap-southeast-2.id
}
