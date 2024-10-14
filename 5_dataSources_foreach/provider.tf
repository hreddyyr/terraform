terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }

  backend "s3" {
    bucket = "my-remote-state"
    key    = "bucketkey"
    region = "us-east-1"
    dynamodb_table = "remote-locking"
  }
}

provider "aws" { 
  region = "us-east-1"
}