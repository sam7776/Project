resource "aws_vpc" "stage_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "stage_subnet" {
  count = var.subnet_count
  vpc_id = aws_vpc.stage_vpc.id
  cidr_block = element(var.subnet_cidrs, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "${var.environment}-subnet-${count.index + 1}"
  }
}

resource "aws_route_table" "stage_route_table" {
  vpc_id = aws_vpc.stage_vpc.id

  tags = {
    Name = "${var.environment}-route-table"
  }
}

resource "aws_route" "stage_route" {
  route_table_id = aws_route_table.stage_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.stage_igw.id
}

resource "aws_internet_gateway" "stage_igw" {
  vpc_id = aws_vpc.stage_vpc.id

  tags = {
    Name = "${var.environment}-igw"
  }
}