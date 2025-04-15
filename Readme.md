# Python App Deployment on AWS ECS using Terraform

## 📁 Project Structure

.
├── Python-app/                 # Contains the Python application code
├── Terraform-ECS-Modules/     # Modular Terraform deployment
├── terraform/                 # Resource-based Terraform deployment
└── README.md                  # You're here!


---

## 🚀 Overview

This project deploys a Python-based web application on AWS ECS Fargate using Terraform. It includes:

- Dockerized Python app
- ECS Fargate service
- Load Balancer (ALB)
- RDS MySQL database
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
Dockerfile:
FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
