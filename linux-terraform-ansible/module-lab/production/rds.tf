# https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/4.5.0

module "db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "4.5.0"

  identifier          = var.project.name
  engine              = "mysql"
  engine_version      = "5.7.25"
  instance_class      = "db.t3.small"
  allocated_storage   = 5
  skip_final_snapshot = true

  db_name  = "devops"
  username = "devops"
  port     = "3306"

  # DB security group
  vpc_security_group_ids = [module.security_group_rds.security_group_id]

  # DB subnet group
  create_db_subnet_group = true
  subnet_ids             = module.vpc_production.private_subnets

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"
}
