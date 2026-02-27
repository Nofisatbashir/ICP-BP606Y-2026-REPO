### High Availability Web Application

## Auto Scaling + Application Load Balancer (AWS)

# Project Overview
This project demonstrates the deployment of a highly available and fault-tolerant web application using:
- Amazon EC2

- Application Load Balancer (ALB)

- Auto Scaling Group (ASG)

- Amazon CloudWatch

The system automatically distributes traffic across multiple EC2 instances and scales dynamically based on CPU utilization.

## Tech Stack
AWS EC2

Application Load Balancer (ALB)

Auto Scaling Group (ASG)

CloudWatch Metrics & Alarms

Amazon Linux 2

Apache (httpd)

## Objectives
- Deploy a web application behind an Application Load Balancer

- Configure an Auto Scaling Group

- Implement scaling policies based on CPU utilization

- Perform stress testing to trigger scaling events

- Demonstrate high availability

## Implementation Steps
1️. Launch Template Configuration

A Launch Template was created with:

Amazon Linux 2 AMI

Security Group allowing:

Port 22 (SSH)

Port 80 (HTTP)

User Data script to install and configure Apache automatically

# User Data Script

```bash

sudo bash -c 'cat > /var/www/html/index.html << EOF
<html>
<head><title>High Availability App</title></head>
<body>
<h1>Auto Scaling Demo</h1>
<p>Instance Ready</p>
</body>
</html>
EOF'

```
---

2. Application Load Balancer

- Internet-facing ALB

- Listener on Port 80 (HTTP)

- Forwarding rule to Target Group

3. Target Group

- Protocol: HTTP

- Port: 80

- Health Check Path: ' / '

- Verified instances show Healthy

4. Auto Scaling Group

Configured with:

- Minimum Capacity: 1

- Desired Capacity: 1

- Maximum Capacity: 3 (or more)

- Scaling Policy: Target Tracking (CPU Utilization ~ 50–60%)

## Auto Scaling Demonstration
 Stress Testing

CPU stress test executed inside EC2:

```bash

sudo yum install -y stress
stress --cpu 2 --timeout 300

```
---

## Result

- CPU utilization spiked above threshold

- CloudWatch triggered scaling policy

- ASG launched additional EC2 instances

- ALB automatically registered new instances

- Traffic distributed across all healthy targets

# High Availability Achieved
- Traffic distributed across multiple instances

- Automatic instance registration via Target Group

- Zero manual intervention during scaling

- Fault tolerance — system remains available even if one instance fails

# Key Takeaways
- Load balancing prevents single points of failure

- Auto Scaling improves elasticity and cost efficiency

- CloudWatch enables automated scaling decisions

- Infrastructure automation ensures consistency

# What I Learned

- Designing highly available cloud architecture

- Implementing scaling policies

- Using CloudWatch metrics for automation

- Automating instance configuration with User Data

- Debugging networking, security groups, and web server issues


