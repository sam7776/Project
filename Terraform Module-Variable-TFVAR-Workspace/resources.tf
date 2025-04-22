# resource "aws_vpc" "vpc1" {
#   cidr_block = "10.40.0.0/16"
#   tags = { Name = "my_vpc1" }
# }

# resource "aws_subnet" "sub1" {
#   vpc_id = aws_vpc.vpc1.id
#   cidr_block = "10.40.2.0/24"
#   tags = {
#     Name = "my_subnet_${terraform.workspace}"
#     Workspace = terraform.workspace
#   }
# }
