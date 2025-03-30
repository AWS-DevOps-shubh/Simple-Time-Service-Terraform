# Terraform ALB Module

This project contains a Terraform module for setting up an Application Load Balancer (ALB) on AWS. It includes resources for the ALB, target groups, listeners, and security groups.

## Features

- Creates an ALB with associated security groups.
- Configures target groups and listeners.
- Outputs key resource identifiers for integration with other modules.

## Prerequisites

- Terraform installed on your system.
- AWS credentials configured for Terraform.

## Usage

Include this module in your Terraform configuration:

```hcl
module "alb" {
  source = "./modules/alb"

  alb_name        = "example-alb"
  public_subnets  = ["subnet-12345", "subnet-67890"]
  vpc_id          = "vpc-12345"
  container_port  = 8080
}
```

## Outputs

- `listener_arn`: ARN of the ALB listener.
- `target_group_arn`: ARN of the target group.
- `alb_name`: DNS name of the ALB.
- `ecs_sg_id`: Security group ID for ECS tasks.

## License

This project is licensed under the MIT License.
