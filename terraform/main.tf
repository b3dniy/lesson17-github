terraform {
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = var.project_bucket_name
}
