terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}


resource "aws_instance" "example" {
  ami           = "ami-0694d931cee176e7d" # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type / eu-west-1 
  instance_type = "t2.micro"
}
