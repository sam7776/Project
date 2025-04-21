variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones for the VPC"
  type        = list(string)
}

variable "environment" {
  description = "The environment for which the resources are being created"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to use"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instances"
  type        = string
}