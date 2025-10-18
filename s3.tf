resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "terraform_s3_bucket" {
  bucket = "terraform-s3-bucket-${random_id.bucket_id.hex}"
  acl    = "private"

  tags = {
    creator = "sriteja"
    project = "terraform"
  }
}