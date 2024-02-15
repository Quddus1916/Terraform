resource "aws_security_group" "My_SG" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My_SG"
  }

}

resource "aws_security_group_rule" "inbound_rule" {
  security_group_id = aws_security_group.My_SG.id
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  type              = "ingress"
}

resource "aws_security_group_rule" "outbound_rule" {
  security_group_id = aws_security_group.My_SG.id
  cidr_blocks       = ["0.0.0.0/0"]
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  type              = "egress"
}