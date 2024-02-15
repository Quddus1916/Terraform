resource "aws_internet_gateway" "My_I_GW" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    name = "My_I_GW"
  }

}