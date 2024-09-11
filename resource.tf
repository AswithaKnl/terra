resource "aws_instance" "aws-multi-instance" {
  count         = 3
  ami           = "ami-0c2af51e265bd5e0e"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}
