resource "aws_route_table" "routing-table-1" {
  vpc_id = data.aws_vpc.selected.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "Routing"
  }
}

resource "aws_route_table_association" "Route-association-IGW" {
  subnet_id      = aws_subnet.prometheus-subnet.id
  route_table_id = aws_route_table.routing-table-1.id
}
