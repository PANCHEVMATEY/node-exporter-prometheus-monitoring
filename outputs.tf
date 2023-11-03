output "private_ip" {
  value = aws_instance.linux-server.public_ip
}

output "igw_id" {
  value = data.aws_internet_gateway.IGW.id
}

output "vpc_id" {
  value = data.aws_vpc.selected.id
}