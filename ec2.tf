resource "aws_instance" "linux-server" {
  ami                         = var.ec2_data.ami
  instance_type               = var.ec2_data.instance_type
  subnet_id                   = aws_subnet.prometheus-subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.prometheus-sg.id]

  tags = {
    Name = "Linux-server"
  }
  user_data = filebase64("${path.module}/prometheus_userdata.sh")

  depends_on = [aws_security_group.prometheus-sg]
}


resource "aws_instance" "prometheus-server" {
  ami                         = var.ec2_data.ami
  instance_type               = var.ec2_data.instance_type
  subnet_id                   = aws_subnet.prometheus-subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.prometheus-sg.id]

  tags = {
    Name = "Prometheus-server"
  }
  user_data = filebase64("${path.module}/prometheus_userdata.sh")

  depends_on = [aws_security_group.prometheus-sg]
}
