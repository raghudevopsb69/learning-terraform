resource "aws_instance" "test" {
  count         = 2
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
}

output "public_ip" {
  value = aws_instance.test[0].public_ip
}
