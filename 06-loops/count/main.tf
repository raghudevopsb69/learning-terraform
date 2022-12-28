//resource "aws_instance" "test" {
//  count         = 2
//  ami           = "ami-0a017d8ceb274537d"
//  instance_type = "t3.micro"
//  tags = {
//    Name = "instance-${count.index}"
//  }
//}
//
//output "public_ip" {
//  value = aws_instance.test.*.public_ip
//}

variable "amis" {
  default = [
    "ami-0a017d8ceb274537d",
    "ami-0b5eea76982371e91"
  ]
}

resource "aws_instance" "test1" {
  count = length(var.amis)
  ami   = var.amis[count.index]
  //ami           = element(var.amis, count.index)
  instance_type = "t3.micro"
  tags = {
    Name = "ami-${count.index}"
  }
}

