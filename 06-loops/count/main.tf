resource "aws_instance" "test" {
  count         = 2
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
}

