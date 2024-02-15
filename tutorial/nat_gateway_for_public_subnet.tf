resource "aws_nat_gateway" "My_nat_gateway_for_public_subnet" {
  subnet_id         = aws_subnet.public_1a.id
  connectivity_type = "public"
  allocation_id     = aws_eip.elastic_ip.id

  tags = {
    Name = "My_nat_gateway_for_public_subnet"
  }

}