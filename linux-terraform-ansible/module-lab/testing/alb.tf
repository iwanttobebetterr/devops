# https://registry.terraform.io/modules/terraform-aws-modules/alb/aws/7.0.0

module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "7.0.0"

  name               = "web-alb-${var.env}"
  load_balancer_type = "application"

  vpc_id          = module.vpc_testing.vpc_id
  subnets         = module.vpc_testing.public_subnets
  security_groups = [module.ec2_security_group.security_group_id]


  target_groups = [
    {
      name_prefix      = "d05-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets          = {
        web-za-01 = {
          target_id = "i-058bc586e2d3258ca"
          port      = 80
        }
        web-zb-01 = {
          target_id = "i-09f0c33ae9e73a2ca"
          port      = 80
        }
        web-za-02 = {
          target_id = "i-0e3772a452f89869e"
          port      = 80
        }
        web-zb-02 = {
          target_id = "i-04e13184c31adc339"
          port      = 80
        }
      }
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]
}