terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.25.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "my_bucket" {
  count = 2
  bucket = "devops-techmaster-07-anhph-${count.index + 5}"
}