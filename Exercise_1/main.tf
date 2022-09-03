# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region  = "us-east-1" 
  profile = "cloud_architect"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0f5742c5494627a2c"
  count         = 4
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "m4.large"
  subnet_id     = "subnet-0f5742c5494627a2c"
  count         = 2
}
