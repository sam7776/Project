# ------------------------------------------------------------------------------
# Resource: AWS EC2 Instance
# This block defines an AWS EC2 instance with a specific AMI and instance type.
# Tags are added to help identify the instance in the AWS Management Console.
# ------------------------------------------------------------------------------

resource "aws_instance" "ec2" {
  ami           = "ami-0e35ddab05955cf57" # Amazon Machine Image ID for the instance
  instance_type = "t2.micro"              # Instance type (small and cost-effective)

  tags = {
    Name = "MyEC2Instance"               # Tag to identify the instance
  }
}

# ------------------------------------------------------------------------------
# Outputs
# These blocks define outputs to retrieve specific information about the EC2 instance.
# Outputs can be used to display values after applying the Terraform configuration.
# ------------------------------------------------------------------------------

# Output: Public IP Address
# Retrieves and displays the public IP address of the EC2 instance.
output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

# Output: Instance ID
# Retrieves and displays the unique ID of the EC2 instance.
output "ec2_id" {
  value = aws_instance.ec2.id
}

# Output: Private IP Address
# Retrieves and displays the private IP address of the EC2 instance.
output "ec2_private_ip" {
  value = aws_instance.ec2.private_ip
}