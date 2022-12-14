# Designate a cloud provider, region, and credentials
provider "aws" {
  region  = "us-east-1" 
  profile = "cloud_architect"
}


# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  subnet_id     = "subnet-03cca6bcf6237bad9"
  count         = 4

  tags = {
    Name = "Udacity T2"
  }
}


# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "m4.large"
  subnet_id     = "subnet-03cca6bcf6237bad9"
  count         = 2

  tags = {
    Name = "Udacity M4"
  }
}
