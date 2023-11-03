data "aws_internet_gateway" "IGW" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.VPC_id]
  }
}
data "aws_subnet" "selected" {
  id = var.subnet_id
}
