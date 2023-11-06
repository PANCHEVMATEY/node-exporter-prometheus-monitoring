variable "VPC_id" {
  description = "ID of the VPC"
}
variable "VPC_cidr" {
  description = "VPC cidr block"
}
variable "region" {
  default = "eu-central-1"
}
variable "availability_zone" {
  default = "eu-central-1a"
}
variable "subnet_cidr" {
  description = "Cidr of the subnet"
  default = "172.31.48.0/20"
}
variable "ec2_data" {
  default = {
    ami           = "ami-0bf8e703278ea0245"
    instance_type = "t2.micro"
  }
}