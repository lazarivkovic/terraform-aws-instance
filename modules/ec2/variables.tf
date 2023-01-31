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

variable "instance_count" {
        description = "Count for EC2 machine"
        type = string
}

variable "ami_id" {
        description = "AMI ID"
        type = string
}

variable "instance_size" {
        description = "Instance type"
        default = "t2.micro"
        type = string
}

variable "monitoring_enabled" {
        description = "Monitoring"
        default = true
        type = string
}

variable "associate_public_ip_address" {
        description = "Associate public ip address"
        default = true
        type = bool
}

variable "cyberlab_subnet" {
        description = "Public subnet ID"
        type = string
}

variable "security_group_id" {
        description = "Security group ID"
        type = list(string)
}

variable "ec2_tags" {
        description = "Tags EC2"
        type = map(string)
        default = {
              Name = "cyberlab_ec2"  
        }
}