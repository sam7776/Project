variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones to use for the VPC."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the VPC and its resources."
  type        = map(string)
}