resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  count                  = var.instance_count
  instance_type          = var.instance_size
  monitoring             = var.monitoring_enabled
  subnet_id              = var.cyberlab_subnet
  security_groups        = var.security_group_id
  associate_public_ip_address = var.associate_public_ip_address
  user_data              = file("${path.module}/user_data.sh")
  tags                   = var.ec2_tags

}