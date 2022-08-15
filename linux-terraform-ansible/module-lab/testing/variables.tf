variable "env" {
  type = string
  description = "Project environment, ex: testing, staging, production"
  default = "testing"
}

variable "s3_bucket_acl" {
  type = string
  description = "S3 permission"
  default = "authenticated-read"
}