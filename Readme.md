# 🚀 Python Web Application with Terraform ECS Fargate Deployment

This project demonstrates deploying a Python web application to AWS using **Terraform ECS Fargate** with two structures:

- `Python-app`: Contains the source code of the Python application (Flask-based).
- `Terraform-ECS-Modules`: Contains Terraform modules to deploy the application infrastructure using AWS ECS Fargate.
- `terraform`: Uses direct Terraform resources for fine-grained infrastructure control.
---
## 📁 Project Structure

```bash
.
├── Python-app
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
├── Terraform-ECS-Modules
│   └── modules/
│       ├── vpc/
│       ├── ecs/
│       ├── alb/
│       └── rds/
├── terraform
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── provider.tf
└── README.md


```

## 🚀 Overview

This project deploys a Python-based web application on AWS ECS Fargate using Terraform. It includes:

- Dockerized Python app
- ECS Fargate service
- Load Balancer (ALB)
- Custom VPC, subnets, and security groups

---

## 🐍 Python Application (`Python-app/`)

This folder contains the Python backend application.

### Example Files:
- `app.py` – Main application
- `requirements.txt` – Dependency list
- `Dockerfile` – For containerization







## 📦 Terraform Deployment

There are two ways to deploy the application:

---

### 1️⃣ Using Terraform Modules (`Terraform-ECS-Modules`)

This method uses modular and reusable Terraform configurations for better scalability and organization.

#### ✅ Modules Included:

- **vpc**: Creates the Virtual Private Cloud (VPC), public subnets, internet gateway, and route tables.
- **ecs**: Provisions ECS Cluster, Fargate Task Definitions, Services, IAM Roles, and Security Groups.
- **alb**: Sets up Application Load Balancer with Target Groups and Listeners.

#### 🚀 Deployment Steps:

```bash
cd Terraform-ECS-Modules
terraform init
terraform plan
terraform apply
```
### 2️⃣ Using Raw Resources (`terraform`)

This method contains direct Terraform resource definitions without modular abstraction.

✅ **Best for:**

- Beginners learning Terraform
- Developers who want full control over every AWS resource

#### 📁 Folder Structure:

- `terraform/`: Contains all raw `.tf` files needed to provision VPC, ECS, ALB, RDS, IAM, and other AWS resources manually.

#### 🚀 Deployment Steps:

```bash
cd terraform
terraform init
terraform plan
terraform apply
