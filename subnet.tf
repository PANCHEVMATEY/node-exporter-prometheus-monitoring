resource "aws_subnet" "prometheus-subnet" {
  vpc_id            = data.aws_vpc.selected.id
  cidr_block        = data.aws_subnet.selected.cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "Prometheus-sg"
  }
}