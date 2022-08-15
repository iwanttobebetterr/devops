variable "env" {
  type = string
  description = "Project environment, ex: testing, staging, production"
  default = "production"
}

variable "s3_bucket_acl" {
  type = string
  description = "S3 permission"
  default = "authenticated-read"
}

variable "project" {
  type = object({
    name = string
  })
}