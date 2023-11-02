resource "aws_subnet" "prometheus-subnet" {
  vpc_id            = aws_vpc.aws-vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Prometheus-sg"
  }
}