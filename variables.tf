variable "vpc_cidr_block" {
  default = "172.31.0.0/16"
}
variable "region" {
  default = "eu-central-1"
}
variable "availability_zone" {
  default = "eu-central-1a"
}
variable "subnet_cidr" {
  default = "172.31.16.0/20"
}
variable "ec2_data" {
  default = {
    ami           = "ami-0d318f1f104612755"
    instance_type = "t3.micro"
  }
}