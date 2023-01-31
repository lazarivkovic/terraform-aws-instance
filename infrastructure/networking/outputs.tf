output "vpc_id" {
    value = module.networking.vpc_id
}

output "cyberlab_subnet_public" { 
    value = module.networking.cyberlab_subnet_public
}

output "cyberlab_subnet_private" {
    value = module.networking.cyberlab_subnet_private
}

output "security_group_id" {
    value = module.networking.security_group_id
}