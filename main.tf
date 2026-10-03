terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "cicd_lab" {
  ami           = "ami-007b1f3fdea0383d9"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-scenario-27"
  }
}