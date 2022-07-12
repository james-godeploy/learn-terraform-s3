terraform {

  # Backend Configuration Here


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami               = "ami-01cc34ab2709337aa"
  instance_type     = "t2.micro"
}