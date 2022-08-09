resource "aws_vpc" "devops-07-v1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc_name
  }
}

variable "vpc_name" {
  default = "terraform-devops-07"
}