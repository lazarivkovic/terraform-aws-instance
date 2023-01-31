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

variable "bucket" {
        description = "Access key to AWS console"
        default = "cyberlab-lazar-new"
        type = string
}

variable "acl" {
        description = "ACL"
        default = "private"
        type = string
}