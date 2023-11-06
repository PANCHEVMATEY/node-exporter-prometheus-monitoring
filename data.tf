data "aws_vpc" "selected" {
  id = var.VPC_id
}

data "aws_internet_gateway" "IGW" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.VPC_id]
  }
}