rootdir=$(pwd)
export TF_VAR_role_arn=$1

cd "$rootdir"/default-vpc-infrastructure || exit
rm -rf .terraform
rm -f terraform.tfstate
rm -f terraform.tfstate.backup
terraform init
terraform apply -parallelism=30 --auto-approve

cd "$rootdir"/delete-default-igw-infrastructure || exit
rm -rf .terraform
rm -f terraform.tfstate
rm -f terraform.tfstate.backup
terraform init
terraform import aws_internet_gateway.default_ap-northeast-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-northeast-1 | tr -d '"')
terraform import aws_internet_gateway.default_ap-northeast-2 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-northeast-2 | tr -d '"')
terraform import aws_internet_gateway.default_ap-northeast-3 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-northeast-3 | tr -d '"')
terraform import aws_internet_gateway.default_ap-south-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-south-1 | tr -d '"')
terraform import aws_internet_gateway.default_ap-southeast-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-southeast-1 | tr -d '"')
terraform import aws_internet_gateway.default_ap-southeast-2 $(cd ../default-vpc-infrastructure && terraform output default_igw_ap-southeast-2 | tr -d '"')
terraform import aws_internet_gateway.default_ca-central-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_ca-central-1 | tr -d '"')
terraform import aws_internet_gateway.default_eu-central-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_eu-central-1 | tr -d '"')
terraform import aws_internet_gateway.default_eu-north-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_eu-north-1 | tr -d '"')
terraform import aws_internet_gateway.default_eu-west-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_eu-west-1 | tr -d '"')
terraform import aws_internet_gateway.default_eu-west-2 $(cd ../default-vpc-infrastructure && terraform output default_igw_eu-west-2 | tr -d '"')
terraform import aws_internet_gateway.default_eu-west-3 $(cd ../default-vpc-infrastructure && terraform output default_igw_eu-west-3 | tr -d '"')
terraform import aws_internet_gateway.default_sa-east-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_sa-east-1 | tr -d '"')
terraform import aws_internet_gateway.default_us-east-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_us-east-1 | tr -d '"')
terraform import aws_internet_gateway.default_us-east-2 $(cd ../default-vpc-infrastructure && terraform output default_igw_us-east-2 | tr -d '"')
terraform import aws_internet_gateway.default_us-west-1 $(cd ../default-vpc-infrastructure && terraform output default_igw_us-west-1 | tr -d '"')
terraform import aws_internet_gateway.default_us-west-2 $(cd ../default-vpc-infrastructure && terraform output default_igw_us-west-2 | tr -d '"')
terraform apply -parallelism=30 -destroy --auto-approve

cd "$rootdir"/delete-default-vpc-infrastructure || exit
rm -rf .terraform
rm -f terraform.tfstate
rm -f terraform.tfstate.backup
terraform init
terraform apply -parallelism=30 --auto-approve
terraform apply -parallelism=30 -destroy --auto-approve

exit 0