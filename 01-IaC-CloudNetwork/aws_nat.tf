# Elastic IP para o NAT Gateway
resource "aws_eip" "eip" {
  domain = "vpc"  
  tags   = var.eip_tags
} 
 
resource "aws_nat_gateway" "natgateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet_us_east_1a.id
  tags          = var.natgateway
}

# Rota apontando para o NAT Gateway
resource "aws_route" "nat_gateway_route_us_east_1a" {
  route_table_id         = aws_route_table.rt_private_us_east_1a.id 
  destination_cidr_block = var.natcidrblock
  nat_gateway_id         = aws_nat_gateway.natgateway.id
}