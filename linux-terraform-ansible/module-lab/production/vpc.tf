module "vpc_production" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  name = "devops-07-anhph-vpc-${var.env}"
  cidr = "10.9.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnets  = ["10.9.1.0/24", "10.9.2.0/24", "10.9.3.0/24"]
  private_subnets = ["10.9.101.0/24", "10.9.102.0/24", "10.9.103.0/24"]

  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}

# https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/4.9.0

module "ec2_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name        = "web-security-group-${var.env}"
  description = "Security group for Web ec2 instances"
  vpc_id      = module.vpc_production.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "all-icmp", "ssh-tcp"]
  egress_rules        = ["all-all"]
}