### Cloud Engineering Portfolio (Week 1–6)

# End-to-End AWS Cloud Projects | From Fundamentals to High Availability Architecture


This repository documents my hands-on cloud engineering journey across six progressive projects, covering:

Cloud fundamentals

Networking & compute

Serverless architecture

Managed databases

Infrastructure as Code

High availability & auto-scaling systems

Each week builds on the previous, demonstrating increasing architectural complexity and automation maturity.

---
### Week 1 — Cloud Fundamentals
# Static Website Hosting with CDN
Project Goal

Deploy a publicly accessible static website using cloud object storage and a CDN. 

# Tech Stack
AWS S3
CDN (CloudFront equivalent)

# Implementation Highlights
Created S3 bucket for static website hosting

Configured bucket policy for public read access

Enabled static website hosting

Integrated CDN for improved performance and global delivery

# Key Concepts Learned
Object storage architecture

Bucket policies & access control

Content Delivery Networks

Public vs private object exposure

---
### Week 2 — Compute & Networking
# Custom VPC & EC2 Deployment
Project Goal

Launch a Linux server inside a custom VPC and securely SSH into it.

# Tech Stack
AWS VPC

Subnets

Route Tables

Internet Gateway

EC2 (Amazon Linux 2)

Security Groups

# Implementation Highlights
Created custom VPC

Configured public subnet with route to Internet Gateway

Deployed EC2 instance

Configured strict security group rules:

SSH (22) from specific IP

HTTP (80) where required

Successfully connected via SSH

# Key Concepts Learned
Network segmentation

Firewall rules (Security Groups)

Public vs private subnets

Infrastructure-level security hardening

---
### Week 3 — Serverless Architecture
# API with AWS Lambda + API Gateway
Project Goal
Build a serverless HTTP API using Lambda triggered by API Gateway.

# Tech Stack
AWS Lambda

API Gateway (HTTP API)

# Implementation Highlights
Created Lambda function

Integrated with API Gateway endpoint

Configured request/response mapping

Tested via browser & curl

Observed cold start behavior

# Key Concepts Learned
Event-driven computing

Stateless architecture

Cold start impact

API lifecycle management

---
### Week 4 — Cloud Databases
# Managed Database Integration (DynamoDB)
Project Goal
Connect an application to a managed cloud database.

# Tech Stack
AWS DynamoDB

# Implementation Highlights

Provisioned managed database service

Configured VPC security rules

Stored DB credentials securely via environment variables

Connected application to database endpoint

Tested data read/write operations

# Key Concepts Learned

Managed database provisioning

Security best practices

Environment variable management

Network-level DB protection

---

### Week 5 — Infrastructure as Code
# Terraform Infrastructure Provisioning
Project Goal
Automate AWS infrastructure creation using Terraform.

# Tech Stack
Terraform

AWS Provider

Remote Backend (S3)

# Implementation Highlights

Defined infrastructure using .tf configuration files

Provisioned:

VPC

EC2

Security Groups

Configured remote backend in S3 for state management

Executed:

`terraform init`

`terraform plan`

`terraform apply`

`terraform destroy`

# Key Concepts Learned

Infrastructure as Code principles

Declarative provisioning

State file management

Remote backend best practices

---

### Week 6 — Capstone Project
# High Availability: Auto Scaling + Load Balancing

Project Goal
Deploy a highly available application using:

Application Load Balancer (ALB)

Auto Scaling Group (ASG)

CloudWatch metrics

# Tech Stack
EC2 (Amazon Linux 2)

Application Load Balancer

Target Group

Auto Scaling Group

CloudWatch

---

## Architecture Overview
```code

Internet
   │
   ▼
Application Load Balancer
   │
Target Group
   │
Auto Scaling Group
   ├── EC2 Instance
   ├── EC2 Instance
   └── EC2 Instance

```
# Implementation Highlights

Created Launch Template with User Data automation

Installed Apache automatically on instance boot

Configured ALB with HTTP listener

Linked ALB to Target Group

Attached ASG to Target Group

Configured Target Tracking Scaling Policy

Monitored CPU metrics in CloudWatch

# Auto Scaling Demonstration

Triggered CPU spike using:

```bash

sudo yum install -y stress
stress --cpu 2 --timeout 300

```

---

# Observed Behavior:

CPU utilization increased

CloudWatch alarm triggered

ASG launched new instances

ALB automatically registered new instances

Traffic distributed seamlessly

---

## Skills Demonstrated Across All Projects

Cloud architecture design

Networking & security configuration

Serverless development

Managed database integration

Infrastructure automation

High availability system design

Monitoring & scaling strategies


## Security Practices Applied

Principle of least privilege

Security group restrictions

Environment variables for credentials

Controlled public exposure

Remote Terraform state management


## Overall Cloud Competencies Gained

By Week 6, I successfully built and understood:

Public static hosting architecture

Custom VPC networking

Serverless API architecture

Managed database connectivity

Infrastructure automation with Terraform

Elastic, fault-tolerant systems with ALB + ASG

This portfolio represents progressive mastery of core cloud engineering concepts.




