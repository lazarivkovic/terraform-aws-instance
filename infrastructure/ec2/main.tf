module "ec2_public" {
    source = "../../modules/ec2"
    # access_key = var.access_key
    # secret_key = var.access_key
    ami_id = var.ami_id
    instance_count = var.instance_count
    cyberlab_subnet = data.terraform_remote_state.vpc.outputs.cyberlab_subnet_public
    security_group_id = ["${data.terraform_remote_state.vpc.outputs.security_group_id}"]
}

module "ec2_private" {
    source = "../../modules/ec2"
    # access_key = var.access_key
    # secret_key = var.access_key
    ami_id = var.ami_id
    instance_count = var.instance_count
    associate_public_ip_address = var.associate_public_ip_address_value_for_private_machine
    cyberlab_subnet = data.terraform_remote_state.vpc.outputs.cyberlab_subnet_private
    security_group_id = ["${data.terraform_remote_state.vpc.outputs.security_group_id}"]
}