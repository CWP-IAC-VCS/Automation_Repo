terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}
resource "aws_instance" "app_server1" {
  #zpc-skip-policy:ZS-AWS-00029:Please add a comment
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  ingress_cidr_blocks = ["0.0.0.0/16"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
