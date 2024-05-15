terraform {
  required_version = ">=1.8"
  required_providers { // これなんだろう？
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.49.0"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}