# in ra output của s3 module
output "s3_bucket_name" {
  value = module.s3_bucket.name
}

output "ec2_instance_za" {
  description = "Public IPs of Ec2 instances"
  value       = module.ec2_instance_za
}

output "ec2_instance_zb" {
  description = "Public IPs of Ec2 instances"
  value       = module.ec2_instance_zb
}

output "alb_dns_name" {
  description = "Dns name of ALB"
  value       = module.alb.lb_dns_name
}