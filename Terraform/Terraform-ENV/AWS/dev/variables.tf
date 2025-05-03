variable "instance_type" {
  description = "The type of EC2 instance to use for the development environment."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instances."
  type        = string
}

variable "environment" {
  description = "The name of the environment (e.g., dev, stage, prod)."
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "The ID of the VPC where the resources will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instances will be launched."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances."
  type        = string
}