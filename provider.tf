terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }
  backend "s3" {
    bucket = "devopsaws-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "devopsaws-locking"
  }
}

provider "aws" {
  region = "us-east-1" 
}  