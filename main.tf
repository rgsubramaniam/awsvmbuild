terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

}


provider "aws" {
  region  = "ap-south-1"
  access_key = "AKIAQ3EGUYXSMD2KA4US"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
}

