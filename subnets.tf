# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

resource "aws_subnet" "public_1" {
  # The VPC Id.
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = "10.0.32.0/20"

  # The AZ for the subnet.
  availability_zone = "us-east-1a"

  # Required for EKS. Instances launched into the subnet should be assigned
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "public-us-east-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}


resource "aws_subnet" "public_2" {
  # The VPC Id.
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = "10.0.96.0/20"

  # The AZ for the subnet.
  availability_zone = "us-east-1b"

  # Required for EKS. Instances launched into the subnet should be assigned
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "public-us-east-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}


resource "aws_subnet" "private_1" {
  # The VPC Id.
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = "10.0.0.0/19"

  # The AZ for the subnet.
  availability_zone = "us-east-1a"

  # Required for EKS. Instances launched into the subnet should be assigned
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "private-us-east-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}


resource "aws_subnet" "private_2" {
  # The VPC Id.
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = "10.0.64.0/19"

  # The AZ for the subnet.
  availability_zone = "us-east-1b"

  # Required for EKS. Instances launched into the subnet should be assigned
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "private-us-east-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}