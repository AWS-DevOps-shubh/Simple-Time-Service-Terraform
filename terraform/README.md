# Terraform AWS ECS Fargate Deployment

This Terraform configuration sets up an AWS infrastructure to host a containerized application using ECS Fargate. The infrastructure includes:

- A VPC with 2 public and 2 private subnets.
- An Internet Gateway for public subnets and a NAT Gateway for private subnets.
- An ECS cluster with a Fargate service running the containerized application.
- An Application Load Balancer (ALB) to expose the application to the internet.
- Security groups to control access to the application and load balancer.

## Prerequisites

1. Install [Terraform](https://www.terraform.io/downloads.html).
2. Configure AWS CLI with appropriate credentials:
   ```bash
   aws configure
   ```
3. Ensure your AWS account has permissions to create the required resources.

## Usage

1. Clone this repository or copy the files to your local machine.
2. Navigate to the directory containing the `main.tf` file.
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Review the execution plan:
   ```bash
   terraform plan
   ```
5. Apply the configuration to create the infrastructure:
   ```bash
   terraform apply
   ```
   Confirm the prompt with `yes`.

6. Once the deployment is complete, note the DNS name of the load balancer from the output. Use this DNS name to access the application in your browser.

## Application Details

- The containerized application is hosted on port `5000`.
- The container image used is `devshubh2204/simple-time-stamp:latest`.

## Cleanup

To destroy the infrastructure and avoid incurring costs, run:
```bash
terraform destroy
```
Confirm the prompt with `yes`.

## Notes

- Ensure the container image is accessible from Docker Hub.
- The NAT Gateway is required for ECS tasks in private subnets to pull the container image.
- Update the `region` in the `provider` block if deploying to a different AWS region.
- Please use http insted of https when access on Browser (ex: http://alb-dns-name).
