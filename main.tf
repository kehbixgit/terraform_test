provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend"{

  ami = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
 count = 4

  tags = {
    Name = "Terra-demo-instances"
    App  = "CSS1"
    Maintainer = "Anderson Sibedwo"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Terra-demo-vpc"
    Purpose = "Jenkins-Terraform Demo"
  }
}
