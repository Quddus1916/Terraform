resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.my_vpc.id
  availability_zone       = "ap-south-1a"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_1A"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id                  = aws_vpc.my_vpc.id
  availability_zone       = "ap-south-1b"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false


  tags = {
    Name = "Private_1A"
  }
}

