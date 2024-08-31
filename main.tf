data "aws_ami" "ubuntu" {
  # This parameter specifies that the data source should return the most recent AMI that matches the filters.
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "tf-cloud" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

