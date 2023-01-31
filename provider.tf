terraform {

  # A provider requirement consists of a local name (aws),  source location, and a version constraint. 
  required_providers {
    aws = {
      # Declaring the source location/address where Terraform can download plugins
      source = "hashicorp/aws"
      # Declaring the version of aws provider as greater than 3.0
      version = "3.74.0"
    }
  }

  backend "s3" {}
}

# Configuring the AWS Provider in us-east-1 region
provider "aws" {
  region  = lookup(var.aws_region, local.env)
  profile = "comphass-core-terraform"

  default_tags {
    tags = {
      project   = "Terraform AWS Subnets"
      createdat = "2023-01-31"
      managedby = "terraform"
      owner     = "eduardo hass"
    }
  }
}