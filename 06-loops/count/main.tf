resource "aws_instance" "test" {
  count         = 2
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  tags = {
    Name = "instance-${count.index}"
  }
}

output "public_ip" {
  value = aws_instance.test.*.public_ip
}
