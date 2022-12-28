resource "aws_instance" "test" {
  ami                    = var.ami
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sgid]
}

variable "sgid" {}
variable "ami" {}
