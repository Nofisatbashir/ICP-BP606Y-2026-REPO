## Week 2 – Compute & Networking: VPC & EC2 Setup

**Project Overview**
This project focuses on setting up a custom Virtual Private Cloud (VPC) in AWS and launching a Linux EC2 instance within it. The goal is to understand networking fundamentals in the cloud, configure secure firewall rules using Security Groups, and establish remote access via SSH.
This task introduces key cloud networking concepts including subnets, routing, public and private IPs, and controlled access to cloud instances.

**Tech Stack**
AWS VPC – Virtual Private Cloud for isolated networking
AWS EC2 – Virtual Linux server
SSH – Secure Shell for remote server access

**Architecture / Workflow**

Internet
   │
   ▼
Internet Gateway
   │
   ▼
VPC
 ├─ Public Subnet → EC2 Instance (Linux)
 └─ Private Subnet (optional)

**Flow:**
- User requests access via SSH
- Security Group firewall allows only authorized IPs on port 22
- EC2 instance responds securely
- Routing and subnet configuration ensures proper network isolation

**Step-by-Step Setup**
1. Create a Custom VPC
Go to AWS VPC Console → Create VPC
Set:
Name: MyVPC
IPv4 CIDR: 10.0.0.0/16
Tenancy: Default

2️. Add Subnets
Public Subnet
CIDR: 10.0.1.0/24
Enable auto-assign public IPv4
Private Subnet (optional)
CIDR: 10.0.2.0/24

3️. Configure Internet Gateway
Create Internet Gateway → Attach to VPC
Update route table for public subnet:
Destination: 0.0.0.0/0
Target: Internet Gateway

4️. Launch EC2 Instance
Go to EC2 → Launch Instance
Select:
OS: Amazon Linux 2
Instance type: t3.micro (free tier)
Network: Your VPC
Subnet: Public subnet
Auto-assign Public IP: Enabled
Key Pair:
Create a key.pem file

5️. Configure Security Group
Inbound Rules:
SSH: TCP, Port 22, Source: Your IP
Outbound Rules:
Allow all (default)

6️. SSH into EC2
chmod 400 MyKeyPair.pem
ssh -i "MyKeyPair.pem" ec2-user@<Public-IP-of-EC2>
✅ You should now have secure remote access to your Linux instance.

**Hints / Best Practices**
- Only allow your IP in Security Groups to avoid exposing SSH to the internet.
- Use meaningful names for VPCs, subnets, and security groups.
- Check routing tables: public subnet must route to Internet Gateway.
- Test connectivity using ping and ssh commands.

**Deliverables**
Screenshot of VPC overview in AWS Console
Screenshot of EC2 instance running
Screenshot of SSH session connected to EC2

**Learning Outcomes**
Understand cloud networking fundamentals (VPC, subnets, routing)
Configure secure SSH access with Security Groups
Launch and manage a Linux EC2 instance
Hands-on experience with AWS compute and networking services