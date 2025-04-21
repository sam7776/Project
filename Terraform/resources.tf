resource "aws_vpc" "main" {
  cidr_block       = "10.20.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tp-vpc"
  }
}

resource "aws_vpc" "main1" {
  cidr_block       = "10.21.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tp-vpc1"
  }
}
resource "aws_vpc" "main1" {
  cidr_block       = "10.21.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tp-vpc1"
  }
}

