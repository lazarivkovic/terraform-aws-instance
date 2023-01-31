output "vpc_id" {
    value = aws_vpc.cyberlab_vpc.id
}

output "cyberlab_subnet_public" { 
    value = aws_subnet.cyberlab_subnet_public.id
}

output "cyberlab_subnet_private" {
    value = aws_subnet.cyberlab_subnet_private.id
}

output "security_group_id" {
    value = aws_security_group.cyberlab.id
}