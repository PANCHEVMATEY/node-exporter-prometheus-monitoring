# Subnet for the instances
resource "aws_subnet" "prometheus-subnet" {
  vpc_id            = data.aws_vpc.selected.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Prometheus-sg"
  }
}