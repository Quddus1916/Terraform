resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  #eks vpc requirements
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "main"
  }

}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "vpc id"
  sensitive   = false

}