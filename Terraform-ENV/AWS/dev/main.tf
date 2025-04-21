resource "aws_vpc" "dev_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "dev_subnet" {
  count = var.subnet_count
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = element(var.subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.environment}-subnet-${count.index + 1}"
  }
}

resource "aws_security_group" "dev_sg" {
  vpc_id = aws_vpc.dev_vpc.id
  name = "${var.environment}-sg"
  description = "Security group for ${var.environment} environment"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ips
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "dev_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.dev_subnet[0].id
  key_name      = var.key_name

  tags = {
    Name = "${var.environment}-instance-${count.index + 1}"
  }
}