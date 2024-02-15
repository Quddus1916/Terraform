resource "aws_instance" "private_instance_1a" {
  ami             = "ami-0449c34f967dbf18a"
  instance_type   = "t2.micro"
  key_name        = "vpc_key"
  security_groups = [aws_security_group.My_SG.id]
  subnet_id       = aws_subnet.private_1a.id
  user_data       = file("./user-data-subnet-id.txt")

  tags = {
    Name = "private_instance_1a"
  }

}

