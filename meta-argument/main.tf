terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

/*
resource "aws_iam_group" "group1" {
    name = "manager24"
    lifecycle {
      prevent_destroy = false
    }
}

resource "aws_iam_user" "usr1" {
    name = "usr12024"
    depends_on = [aws_iam_group.gp1]
}
*/

resource "aws_instance" "server1" {
  ami = "ami-0195204d5dce06d99"
  instance_type = "t3.small"
  key_name = "wordpress"
}