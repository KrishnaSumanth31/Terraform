# Resource: aws_route_table
# https://registry.terraform.io/providers/aaronfeng/aws/latest/docs/resources/route_table

resource "aws_route_table" "public" {
  # The VPC Id.  
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route  
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internetgateway or a virtual private gateway.
    gateway_id = aws_internet_gateway.main.id
  }

  #   route {
  #     ipv6_cidr_block        = "::/0"
  #     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
  #   }

  tags = {
    Name = "public"
  }
}


resource "aws_route_table" "private1" {
  # The VPC Id.  
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route  
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internetgateway or a virtual private gateway.
    gateway_id = aws_nat_gateway.gw1.id
  }

  #   route {
  #     ipv6_cidr_block        = "::/0"
  #     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
  #   }

  tags = {
    Name = "private1"
  }
}


resource "aws_route_table" "private2" {
  # The VPC Id.  
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route  
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internetgateway or a virtual private gateway.
    gateway_id = aws_nat_gateway.gw2.id
  }

  #   route {
  #     ipv6_cidr_block        = "::/0"
  #     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
  #   }

  tags = {
    Name = "private2"
  }
}