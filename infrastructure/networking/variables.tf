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

variable "enable_dns_support" {
        description = "Enable DNS support"
        default = "true"
}

variable "enable_dns_hostnames" {
        description = "Enable DNS hostnames"
        default = "true"
}

variable "map_public_ip_on_launch" {
        description = "Map public ip"
        default = "true"
}

variable "availability_zone" {
        description = "Availablity zone"
        default = "us-east-1a"
}