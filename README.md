# terraform-aws-vpc-module
creating vpc module

# terraform-vpc-module

Terraform module for creating an AWS VPC.

## Inputs

1. **cidr_block (Mandatory):** CIDR block for the VPC. User must provide a valid CIDR block.

2. **enable_dns_hostnames (Optional):** Enables DNS hostnames for the VPC. Default value can be provided through the variable.

3. **common_tags (Optional):** Common tags for the VPC. Default value is empty. User can provide tags in a map.

## Outputs

1. **vpc_id:** ID of the created VPC.

2. **vpc_cidr_block:** CIDR block of the created VPC.

3. **default_security_group_id:** ID of the VPC's default security group.

