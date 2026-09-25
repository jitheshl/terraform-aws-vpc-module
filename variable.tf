variable "project_name"{

}
variable "environment"{
    
}
variable "cidr_block"{

}

variable "enable_dns_hostnames"{
    default = true
}

variable "common_tags"{
    type = map
    default = {
        Terraform = "true"
    }
}

variable "igw_tags"{
    default = {
        Terraform = "true"
    }
}

variable "public_subnet_tags"{
    default = {}
}

variable "public_cidr_blocks"{
    type = list
    validation{
        condition = length(var.public_cidr_blocks)==2
        error_message ="dont mention more than 2 and less than 2"
    }
}

variable "private_subnet_tags"{
    default = {}
}

variable "private_cidr_blocks"{
    type = list
    validation{
        condition = length(var.private_cidr_blocks)==2
        error_message ="dont mention more than 2 and less than 2"
    }
}

variable "database_subnet_tags"{
    default = {}
}

variable "database_cidr_blocks"{
    type = list
    validation{
        condition = length(var.database_cidr_blocks)==2
        error_message ="dont mention more than 2 and less than 2"
    }
}

variable "nat_tags"{
    default = {}
}

variable "public_route_table"{
    default = {}
}
variable "private_route_table"{
    default = {}
}
variable "database_route_table"{
    default = {}
}

variable "is_peering_required"{
    default = false
}

variable "peer_tags"{
    default = {}
}