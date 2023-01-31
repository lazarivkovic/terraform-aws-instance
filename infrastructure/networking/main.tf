module "networking" {
    source = "../../modules/networking"
    # access_key = var.access_key
    # secret_key = var.secret_key
    enable_dns_support = var.enable_dns_hostnames
    enable_dns_hostnames = var.enable_dns_hostnames
    map_public_ip_on_launch = var.map_public_ip_on_launch
    availability_zone = var.availability_zone
}