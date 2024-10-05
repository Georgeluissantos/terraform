#Criação de RT-Private-1a
resource "aws_route_table" "rt_private_us_east_1a" {
  vpc_id = aws_vpc.prod_vpc.id
  tags   = var.rt_private_us_east_1a_tag 
}
#Criação de RT-public
resource "aws_route_table" "rt_public_us_east_1a" {
  vpc_id = aws_vpc.prod_vpc.id  
  tags = var.rt_public_us_east_1a_tag 
}

 # Associação da subnet pública à tabela de roteamento pública
resource "aws_route_table_association" "rt_public_us_east_1a_association" {
  subnet_id      = aws_subnet.public_subnet_us_east_1a.id
  route_table_id = aws_route_table.rt_public_us_east_1a.id  
} 

#Crie uma Rota na Tabela de Rotas Apontando para o Internet Gateway:
resource "aws_route" "igw_route" {
  route_table_id         = aws_route_table.rt_public_us_east_1a.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.prod_vpc_igw.id
}

# Associação da subnet privada à tabela de roteamento privada
resource "aws_route_table_association" "private_us_east_1a_association_rt" {
  subnet_id = aws_subnet.private_subnet_us_east_1a.id
  route_table_id = aws_route_table.rt_private_us_east_1a.id
}