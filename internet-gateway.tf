# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
# aws_internet_gateway name we can specify according to the Project instead of - main

# If we want to use reference of the id we can declare in a variable

# data "aws_vpc" "main" {
#     id = "vpc-095224a8e780c5933"
# }

resource "aws_internet_gateway" "main" {

  # The VPC Id to create in.
  vpc_id = "vpc-095224a8e780c5933"
  #vpc_id = aws_vpc.main.id 
  #vpc_id = data.aws_vpc.main.id 
  # A map of tags to assign the resource.
  tags = {
    Name = "main"
  }


}