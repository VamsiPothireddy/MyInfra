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
resource "aws_eip" "ipam-ip" {

  provider = aws.west
  domain       = "vpc"
 
}
