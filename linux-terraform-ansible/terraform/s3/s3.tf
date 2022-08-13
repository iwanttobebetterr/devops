resource "aws_s3_bucket" "my_bucket" {
  count = 2
  bucket = "devops-techmaster-07-anhph-${count.index + 1}"
}