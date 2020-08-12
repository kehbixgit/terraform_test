provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "frontend"{

  ami = "ami-09d95fab7fff3776c"
  instance_type = "t2.micro"
 count = 4

  tags = {
    Name = "frontend-01"
    App  = "devops1"
    Maintainer = "Savatora"
  }
}
