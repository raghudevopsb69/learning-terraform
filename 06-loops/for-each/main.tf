variable "instances" {
  default = {
    one = {
      ami           = "ami-0a017d8ceb274537d"
      instance_type = "t3.micro"
    }
    two = {
      ami           = "ami-0b5eea76982371e91"
      instance_type = "t2.micro"
    }
  }
}

resource "aws_instance" "test1" {
  for_each = var.instances
  ami      = each.value["ami"]
  //ami           = element(var.amis, count.index)
  instance_type = each.value["instance_type"]
  tags = {
    Name = "instance-${each.key}"
  }
}

