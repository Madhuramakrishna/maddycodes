#Terraform Block
terraform {
  required_version = "~> 1.0.7"
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
  }
}
#Provider Bloack
provider "aws" {
  region = "ap-south-1"
}
