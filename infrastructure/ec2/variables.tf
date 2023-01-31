# variable "access_key" {
#         description = "Access key to AWS console"
#         default = "add your access key here"
#         type = string
# }

# variable "secret_key" {
#         description = "Secret key to AWS console"
#         default = "add your secret key here"
#         type = string
# }

# variable "region" {
#         description = "Region for AWS account"
#         default = "add your region here"
#         type = string
# }

variable "ami_id" {
        description = "AMI ID"
        default = "ami-06878d265978313ca"
        type = string
}

variable "instance_count" {
        description = "Count for EC2 machine"
        default = "2"
        type = string
}

variable "associate_public_ip_address_value_for_private_machine" {
        description = "Associate public ip address"
        default = false
        type = bool
}
