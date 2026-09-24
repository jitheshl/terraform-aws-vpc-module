resource "aws_vpc" "main"{
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames
    instance_tenancy = "default"
    

    tags = merge(
        var.common_tags,{
            Name=local.resource_name
        }
    )
}

resource "aws_internet_gateway" "main"{
    vpc_id = aws_vpc.main.id
    tags = merge(
        var.common_tags,
        var.igw_tags,
        {
            Name = local.resource_name
        }
    )
}

# expense-dev-public-us-east-1a
resource "aws_subnet" "public" {
    count = length(var.public_cidr_blocks)
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_cidr_blocks[count.index]
    availability_zone = local.az_names[count.index]
    map_public_ip_on_launch = true
    tags = merge(
        var.common_tags,
        var.subnet_tags,{
            Name = "${local.resource_name}-public-${local.az_names[count.index]}"
        }
    )
}