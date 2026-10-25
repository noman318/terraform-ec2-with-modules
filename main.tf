terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source = "./modules/ec2_instance"

  name          = var.instance_name
  instance_type = var.instance_type
  ami_id        = var.ami_id
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  tags          = var.tags
}
