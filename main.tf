# Backend configuration for Terraform state
terraform {
  cloud {
    organization = "SRITEZ"
    workspaces {
      name = "Terraform"
    }
  }

  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}


# Specify the AWS provider and region
provider "aws" {
  region = var.aws_region
}


# Module calls (if any) and other global configurations can go here
