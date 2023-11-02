resource "aws_instance" "linux-server" {
  ami                         = var.ec2_data.ami
  instance_type               = var.ec2_data.instance_type
  subnet_id                   = aws_subnet.prometheus-subnet.id
  associate_public_ip_address = true
  security_groups             = aws_security_group.prometheus-sg

  tags = {
    Name = "Linux-server"
  }
  user_data = filebase64("${path.module}/prometheus_userdata.sh")
}


resource "aws_instance" "prometheus-server" {
  ami                         = var.ec2_data.ami
  instance_type               = var.ec2_data.instance_type
  subnet_id                   = aws_subnet.prometheus-subnet.id
  associate_public_ip_address = true
  security_groups             = aws_security_group.prometheus-sg

  tags = {
    Name = "Prometheus-server"
  }
  user_data = filebase64("${path.module}/prometheus_userdata.sh")
}
