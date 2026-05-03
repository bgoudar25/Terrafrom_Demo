provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-091138d0f0d41ff90"  # Amazon Linux 2 (example for ap-south-1)
  instance_type = "t2.micro"
  key_name = "myNVKey"

  tags = {
    Name = "MyTerraformEC2"
  }
}