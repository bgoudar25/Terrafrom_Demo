provider "aws" {
  #region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0388e3ada3d9812da"
  instance_type = "t7.micro"
  key_name      = "MyKeypaire"

  tags = {
    Name = "MyTerraformEC2"
  }
}


resource "aws_instance" "my_ec3" {
  ami           = "ami-0388e3ada3d9812da"
  instance_type = "t3.micro"
  key_name      = "MyKeypaire"

  tags = {
    Name = "MyTerraformEC3"
  }
}
