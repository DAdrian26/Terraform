variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = "eu-central-1"
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Instnace"
  default     = "t2.micro"
}

variable "department" {
  type        = string
  description = "Company name for resource tagging"
  default     = "sales"
}

variable "team" {
  type        = string
  description = "Team name for resource tagging"
  default = "dev"
}

variable "ec2_ami" {

    type = string
    description = "The AMI id for the ec2 instance"
    default = "ami-0b8ea3624881b47a1"
}

variable "ec2_count" {

    type = number
    description = "NUmber of ec2 instance"
    default = "1"
    }

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet1_cidr_block" {
  type        = string
  description = "CIDR Block for Subnet 1 in VPC"
  default     = "10.0.0.0/24"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}


