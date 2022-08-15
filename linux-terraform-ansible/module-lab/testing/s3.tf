# gọi module s3 từ đường dẫn local và truyền các giá trị vào
module "s3_bucket" {
  source = "../modules/s3"

  bucket_name = "vn-techmaster-devops-07-anhph-${var.env}"
  bucket_acl  = var.s3_bucket_acl

  tags = {
    Env = var.env
  }
}