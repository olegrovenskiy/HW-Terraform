
variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
  access_key  =  "${var.AWS_ACCESS_KEY_ID}"
  secret_key  = "${var.AWS_SECRET_ACCESS_KEY}"
  region      = "eu-central-1"
}
  data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]
  }

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_instance" "Netology-HWork" {
  ami = data.aws_ami.ubuntu.id
instance_type = "t2.micro"
  tags = {
    Name = "Netol-HW-Test"
}

credit_specification {
    cpu_credits = "unlimited"
  }

}

resource "aws_vpc" "Netolog-HW" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "HW-test"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.Netolog-HW.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-central-1"

  tags = {
    Name = "HW-test"
  }
}

