resource "aws_internet_gateway" "cyberlab_igw" {
    vpc_id = "${aws_vpc.cyberlab_vpc.id}"
    tags = var.cyberlab_igw_tags
}

# Public routes
resource "aws_route_table" "cyberlab_public_crt" {
    vpc_id = "${aws_vpc.cyberlab_vpc.id}"
    
    route {
        cidr_block = var.cidr_block_routes
        gateway_id = "${aws_internet_gateway.cyberlab_igw.id}" 
    }
    
    tags = var.cyberlab_public_crt_tags
}
resource "aws_route_table_association" "cyberlab_subnet_public"{
    subnet_id = "${aws_subnet.cyberlab_subnet_public.id}"
    route_table_id = "${aws_route_table.cyberlab_public_crt.id}"
}

# Private routes
resource "aws_route_table" "cyberlab_private_crt" {
    vpc_id = "${aws_vpc.cyberlab_vpc.id}"
    
    route {
        cidr_block = var.cidr_block_routes
        nat_gateway_id = "${aws_nat_gateway.cyberlab_nat_gateway.id}" 
    }
    
    tags = var.cyberlab_private_crt_tags
}
resource "aws_route_table_association" "cyberlab_crta_private_subnet"{
    subnet_id = "${aws_subnet.cyberlab_subnet_private.id}"
    route_table_id = "${aws_route_table.cyberlab_private_crt.id}"
}

# NAT Gateway to allow private subnet to connect out the way
resource "aws_eip" "nat_gateway" {
    vpc = true
}
resource "aws_nat_gateway" "cyberlab_nat_gateway" {
    allocation_id = aws_eip.nat_gateway.id
    subnet_id     = "${aws_subnet.cyberlab_subnet_public.id}"

    tags = var.cyberlab_nat_gateway_tags

    # To ensure proper ordering, add Internet Gateway as dependency
    depends_on = [aws_internet_gateway.cyberlab_igw]
}

# Default Security Group of VPC
resource "aws_security_group" "cyberlab" {
  name        = "cyberlab-default-sg"
  description = "Default SG to alllow traffic for public subnet"
  vpc_id      = aws_vpc.cyberlab_vpc.id
  depends_on = [
    aws_vpc.cyberlab_vpc
  ]

    ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = "true"
    cidr_blocks = ["0.0.0.0/0"]
  }

}