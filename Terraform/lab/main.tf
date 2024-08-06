provider "aws" {
      region = "us-east-1"
}

resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name: "development"
  }
}

variable "dev_cidr_block" {
  description = "dev cidr block"
}
resource "aws_subnet" "dev-subnet" {
  vpc_id = aws_vpc.development-vpc.id 
  cidr_block = var.dev_cidr_block #"10.0.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
      Name: "subnet-1-dev"
  }
}

data "aws_vpc" "existing-vpc" {

  default = true

}

variable "subnet_cidr_block" {
  description = "subnet cidr block"
}
resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing-vpc.id
  cidr_block = var.subnet_cidr_block #"172.31.96.0/20"
  availability_zone = "us-east-1b"
    tags = {
      Name: "subnet-2-dev"
  }
}

output "dev-vpc-id" {
  value = aws_vpc.development-vpc.id
}
