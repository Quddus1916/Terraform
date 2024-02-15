resource "aws_route_table_association" "private_1a_association" {
  subnet_id      = aws_subnet.private_1a.id
  route_table_id = aws_route_table.My_Private_RT.id
}

resource "aws_route_table_association" "Public_1a_association" {
  subnet_id      = aws_subnet.public_1a.id
  route_table_id = aws_route_table.Main_route_table.id
}