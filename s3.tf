resource "aws_s3_bucket" "terraform-s3-bucket" {
  bucket = "terraform-s3-bucket"
  region = "eu-east-1"
  tags = {
    creator = "sriteja"
    project = "terraform"
  }
}