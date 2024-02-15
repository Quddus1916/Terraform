provider "aws" {
  region = "ap-southeast-1"

}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.21"
    }
  }
  required_version = ">= 1.2.0" 
}