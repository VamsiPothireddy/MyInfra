terraform {
  required_version = "~>1.9"
  required_providers {
   aws = {
      source  = "hashicorp/aws"
      version = "<5.82.2"
    }
}
}
provider "aws" {
  region = "us-east-1"
}

provider "aws" {
alias = "west"
  region = "us-west-1"
}



/*resource "aws_instance" "web"{

  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t3.micro"

  tags = {
    Name = var.server_name
    apm-id=var.cost_center
  }
}


output "ec2-public-ip" {
  value = aws_instance.web.public_ip
  
}*/
