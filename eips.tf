# Resource: aws_eip
# https://registry.terraform.io/providers/aaronfeng/aws/latest/docs/resources/eip

resource "aws_eip" "nat1" {
  # EIP may require IGW to exist prior to association
  # Use depends on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main]
}

resource "aws_eip" "nat2" {
  # EIP may require IGW to exist prior to association
  # Use depends on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main]
}