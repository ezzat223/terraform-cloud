resource "aws_instance" "tf-cloud" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

