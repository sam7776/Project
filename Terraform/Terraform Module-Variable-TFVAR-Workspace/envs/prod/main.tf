module "ec2" {
  source         = "../../modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = "prod-instance"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t3.micro"
}