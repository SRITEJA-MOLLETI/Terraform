resource "aws_s3_bucket" "terraform-s3-bucket" {
  bucket = "terraform-s3-bucket"
  region = var.aws_region
  tags = {
    creator = "sriteja"
    project = "terraform"
  }
}