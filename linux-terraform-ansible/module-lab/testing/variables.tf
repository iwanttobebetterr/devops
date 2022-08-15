# Main variables

variable "env" {
  type = string
  description = "Project environment, ex: testing, staging, production"
  default = "testing"
}

variable "project" {
  type = object({
    name = string
  })
}

#S3 variables

variable "s3_bucket_acl" {
  type = string
  description = "S3 permission"
  default = "authenticated-read"
}