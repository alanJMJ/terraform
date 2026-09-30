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
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e5497a77ef21b5ac"
  instance_type = "t3.micro"
  key_name = "iac-alura2"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}