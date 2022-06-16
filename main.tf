resource "aws_s3_bucket" "mwaa_s3_bucket" {
  bucket = var.bucket_name
}