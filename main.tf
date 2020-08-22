provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend"{

  ami = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
 count = 2

  tags = {
    Name = "Terra-demo-instances"
    App  = "CSS1"
    Maintainer = "Anderson Savatora"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Terra-demo-vpc"
    Purpose = "Jenkins-Terraform Demo"
  }
}
