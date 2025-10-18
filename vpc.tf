resource "aws_vpc" "sri_vpc" {
  cidr_block = "10.0.0.0/28"
  tags = {
    creator        = "sriteja"
    project        = "terraform"
  }
}