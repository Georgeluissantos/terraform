#Criação de Subnet Public e Private
#SubNet - 1a
resource "aws_subnet" "private_subnet_us_east_1a" {
  vpc_id            = aws_vpc.prod_vpc.id
  cidr_block        = var.vpc_cidr_block
  availability_zone = var.availability_zone_us_east_1a
  tags              = var.private_subnet_us_east_1a_tag 
}

resource "aws_subnet" "public_subnet_us_east_1a" {
  vpc_id            = aws_vpc.prod_vpc.id 
  cidr_block        = var.public_cidr_block_us_east_1a 
  availability_zone = var.availability_zone_us_east_1a
  tags              = var.public_subnet_us_east_1a_tag 

}
