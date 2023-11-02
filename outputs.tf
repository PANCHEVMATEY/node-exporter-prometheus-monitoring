output "private_ip" {
  value = aws_instance.linux-server.public_ip
}