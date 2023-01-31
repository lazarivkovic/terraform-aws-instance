resource "aws_vpc" "cyberlab_vpc" {
    cidr_block = var.cidr_block_vpc
    enable_dns_support = var.enable_dns_support
    enable_dns_hostnames = var.enable_dns_hostnames
    tags = var.cyberlab_vpc_tags
}

resource "aws_subnet" "cyberlab_subnet_public" {
    vpc_id = "${aws_vpc.cyberlab_vpc.id}"
    cidr_block = var.cidr_block_public_subnets
    map_public_ip_on_launch = var.map_public_ip_on_launch
    availability_zone = var.availability_zone
    tags = var.cyberlab_subnet_public_tags
}

resource "aws_subnet" "cyberlab_subnet_private" {
    vpc_id = "${aws_vpc.cyberlab_vpc.id}"
    cidr_block = var.cidr_block_private_subnets
    availability_zone = var.availability_zone
    tags = var.cyberlab_subnet_private_tags
}