variable "instances" {
  default = {
    one = {
      ami           = "ami-0a017d8ceb274537d"
      instance_type = "t3.micro"
    }
    two = {
      ami = "ami-0b5eea76982371e91"
    }
  }
}

resource "aws_instance" "test1" {
  for_each      = var.instances
  ami           = each.value["ami"]
  instance_type = lookup(each.value, "instance_type", null) == null ? "t2.micro" : each.value["instance_type"]
  tags = {
    Name = "instance-${each.key}"
  }
}

