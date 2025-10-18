variable "low_cost_instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "t3.micro"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to use for the instance"
  # Example here is Amazon Linux 2 AMI for us-east-1; replace with appropriate AMI for your region
  default     = "ami-0341d95f75f311023"
}

# Create the EC2 instance resource
# resource "aws_instance" "low_cost_instance" {
#   ami           = var.ami_id
#   instance_type = var.low_cost_instance_type

#   tags = {
#     creator = "sriteja"
#     project = "terraform"
#   }
# }
