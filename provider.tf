terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

# ------ AWS Configurations -------- #
provider "aws" {
  region = var.region
}


provider "random" {
  # Configuration options
}