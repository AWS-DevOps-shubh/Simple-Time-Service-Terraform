This project demonstrates how to deploy a containerized Python application on AWS ECS (Fargate) using two different Terraform approaches:

Modular Approach: Located in Terraform-ECS-Modules

Raw Resources Approach: Located in terraform/

The app runs a Python backend API (like Flask/FastAPI) behind an Application Load Balancer with RDS MySQL and is deployed to public subnets in a custom VPC.
