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
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "app_server" {
  ami           = "ami-002f6e91abff6eb96"
  instance_type = "t2.micro"

  tags = {
     Name = "Test-Server"
  
  }
}
