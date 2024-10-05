#Criação de VPC e IGW#
resource "aws_vpc" "prod_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags                 = var.vpc_tags
}

resource "aws_internet_gateway" "prod_vpc_igw" {
  vpc_id = aws_vpc.prod_vpc.id
  tags   = var.internet_gateway_tags
}
