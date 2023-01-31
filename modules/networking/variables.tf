### Default ###


# variable "access_key" {
#         description = "Access key to AWS console"
#         type = string
# }

# variable "secret_key" {
#         description = "Secret key to AWS console"
#         type = string
# }

# variable "region" {
#         description = "Region for AWS account"
#         type = string
# }

variable "enable_dns_support" {
        description = "Enable DNS support"
        type = string
}

variable "enable_dns_hostnames" {
        description = "Enable DNS hostnames"
        type = string
}

variable "map_public_ip_on_launch" {
        description = "Map public ip"
        type = string
}

variable "availability_zone" {
        description = "Availablity zone"
        type = string
}


### VPC ###


variable "cidr_block_vpc" {
        description = "CIDR block for VPC"
        default = "10.0.0.0/16"
        type = string
}

variable "cidr_block_public_subnets" {
        description = "CIDR block for public subnet"
        default = "10.0.1.0/24"
        type = string
}

variable "cidr_block_private_subnets" {
        description = "CIDR block for private subnet"
        default = "10.0.2.0/24"
        type = string
}

variable "cidr_block_routes" {
        description = "CIDR block for Routes"
        default = "0.0.0.0/0"
        type = string
}


### Tags ###

variable "cyberlab_vpc_tags" {
        description = "Tags for VPC"
        type = map(string)
        default = {
              Name = "cyberlab_vpc"
        }
}

variable "cyberlab_subnet_public_tags" {
        description = "Tags for public subnet"
        type = map(string)
        default = {
              Name = "cyberlab_subnet_public"
        }
}

variable "cyberlab_subnet_private_tags" {
        description = "Tags for private subnet"
        type = map(string)
        default = {
              Name = "cyberlab_subnet_private"
        }
}


variable "cyberlab_igw_tags" {
        description = "Tags for IGW"
        type = map(string)
        default = {
              Name = "cyberlab_igw"
        }
}

variable "cyberlab_public_crt_tags" {
        description = "Tags for public CRT"
        type = map(string)
        default = {
              Name = "cyberlab_public_crt"
        }
}

variable "cyberlab_private_crt_tags" {
        description = "Tags for private CRT"
        type = map(string)
        default = {
              Name = "cyberlab_private_crt"
        }
}

variable "cyberlab_nat_gateway_tags" {
        description = "Tags for NAT Gateway"
        type = map(string)
        default = {
              Name = "cyberlab_nat_gateway"
        }
}