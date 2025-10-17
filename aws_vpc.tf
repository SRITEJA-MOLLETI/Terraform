
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

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "sri_vpc" {
  cidr_block = "10.0.0.0/16"
}