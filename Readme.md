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

### Sample `app.py`:
```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from ECS Fargate!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

