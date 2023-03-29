provider "aws" {
  region = "us-east-1"
}

//VPC
resource "aws_vpc" "vpc" {
  cidr_block = "20.0.0.0/16"

  tags = {
    Name = "vpc-mintemir-jenkins"
  }
}
