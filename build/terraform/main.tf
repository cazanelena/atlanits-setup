terraform {
  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "terraform-state-atlantis4355"
    key    = "dev-atlantis/terraform.tfstate"
    region = "eu-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
