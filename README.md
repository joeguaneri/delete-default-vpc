This project uses a full Terraform approach to destroy the default VPCs in an AWS account. Currently, all default enabled regions are destroyed.

To run:
./run.sh <role_arn>

You will need to have an AWS_ACCESS_KEY and an AWS_SECRET_KEY set.

Blog article: https://www.guaneri.com/2024/06/08/misadventures-of-aws-default-vpc-and-terraform
