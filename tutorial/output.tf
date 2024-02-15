output "public_1a" {
  value       = aws_subnet.public_1a.id
  description = "public subnet"
}

output "private_1a" {
  value       = aws_subnet.private_1a.id
  description = "private subnet"

}

output "vpc_id" {
  value       = aws_vpc.my_vpc.id
  description = "vpc id"
  sensitive   = false

}

output "route_table_id" {
  value       = aws_route_table.My_Private_RT.id
  description = "route table id"
  sensitive   = false

}

output "gateway_id" {
  value       = aws_internet_gateway.My_I_GW.id
  description = " id"
  sensitive   = false

}

output "elastic_ip" {
  value       = aws_eip.elastic_ip.id
  description = " id"
  sensitive   = false

}
