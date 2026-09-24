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

variable "subnet_tags"{
    default = {}
}

variable "public_cidr_blocks"{
    type = list
    validation{
        condition = length(var.public_cidr_blocks)==2
        error_message ="dont mention more than 2 and less than 2"
    }
}