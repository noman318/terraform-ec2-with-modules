variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "terraform-ec2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance. Leave null to use the latest Amazon Linux 2023 AMI."
  type        = string
  default     = null
}

variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH access. Leave null for no key."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID to launch the EC2 instance in. Leave null to use a default subnet of the default VPC."
  type        = string
  default     = null
}

variable "tags" {
  description = "Extra tags for the EC2 instance"
  type        = map(string)
  default     = {}
}
