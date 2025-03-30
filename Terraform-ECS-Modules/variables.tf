variable "region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "ecs-vpc"
}

variable "cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones for the subnets"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway for private subnets"
  default     = true
}

variable "container_image" {
  description = "Docker image for the ECS task"
  default     = "devshubh2204/simple-time-stamp:latest"
}

variable "container_port" {
  description = "Port on which the container listens"
  default     = 5000
}
