resource "aws_route_table" "My_Private_RT" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.My_nat_gateway_for_public_subnet.id
  }

  tags = {
    Name = "My_Private_RT"
  }
}

resource "aws_route_table" "Main_route_table" {
  vpc_id = aws_vpc.my_vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.My_I_GW.id
  }

  tags = {
    Name = "Main_route_table"
  }
}