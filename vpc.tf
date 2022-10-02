# Resource: aws_vpc
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# vpc name we can specify according to the Project instead of - main
resource "aws_vpc" "main" {
  # The CIDR block for the vpc.
  cidr_block = "10.0.0.0/16"

  # Makes your instances shared on the host
  instance_tenancy = "default"

  # Required  for EKS. Enable/Disable DNS support in the VPC.
  enable_dns_support = true

  # Required for EKS. Enable/Disable DNS hostnames in the VPC.
  enable_dns_hostnames = true

  # Enable/Disable classiclink for the VPC.
  enable_classiclink = false

  # Enable/Disable classiclink DNS support for the VPC.
  enable_classiclink_dns_support = false

  # Requests an Amazon-provider IPv6 CIDR block with a /56 prefix length
  assign_generated_ipv6_cidr_block = false

  # A map of tags to assign to the resource.

  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id."

  # Setting an output value as sensitive prevents terraform from showing its value in plan and apply
  sensitive = false
}