# Terraform ALB Module

This project contains a Terraform module for setting up an Application Load Balancer (ALB) on AWS. It includes resources for the ALB, target groups, listeners, and security groups.

## Features

- Creates an ALB with associated security groups.
- Configures target groups and listeners.
- Outputs key resource identifiers for integration with other modules.

## Prerequisites

- Terraform installed on your system.
- AWS credentials configured for Terraform.

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Plan the infrastructure changes:
   ```bash
   terraform plan
   ```

4. Apply the changes to create resources:
   ```bash
   terraform apply
   ```
5. Once the deployment is complete, note the DNS name of the load balancer from the output. Use this DNS name to access the application in your browser.

## Application Details

- The containerized application is hosted on port `5000`.
- The container image used is `devshubh2204/simple-time-stamp:latest`.

## Cleanup

To destroy the infrastructure and avoid incurring costs, run:
```bash
terraform destroy
```
Confirm the prompt with `yes`.

## Usage

Include this module in your Terraform configuration:

```hcl
module "alb" {
  source = "./modules/alb"

  alb_name        = "example-alb"
  public_subnets  = ["subnet-12345", "subnet-67890"]
  vpc_id          = "vpc-12345"
  container_port  = 5000
}
```

## Outputs

- `listener_arn`: ARN of the ALB listener.
- `target_group_arn`: ARN of the target group.
- `alb_name`: DNS name of the ALB.
- `ecs_sg_id`: Security group ID for ECS tasks.

## Notes

- Ensure the container image is accessible from Docker Hub.
- The NAT Gateway is required for ECS tasks in private subnets to pull the container image.
- Update the `region` in the `provider` block if deploying to a different AWS region.
- Please use http insted of https when access on Browser (ex: http://alb-dns-name).

## License

This project is licensed under the MIT License.
