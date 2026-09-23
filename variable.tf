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