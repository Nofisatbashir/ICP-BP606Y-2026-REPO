# Week 5 - Infrastructure as Code (IaC) with Terraform

## Project Overview
This project demonstrates the implementation of Infrastructure as Code (IaC) using Terraform to provision and manage AWS cloud resources in an automated, reproducible, and scalable manner.
The infrastructure components are defined declaratively using Terraform configuration files (.tf), eliminating the need for manual provisioning via the AWS Console.

A remote backend configuration was implemented using Amazon S3 to securely store Terraform state files and ensure consistency across environments.

---

## Tech Stack
- Terraform — Infrastructure as Code tool
- Amazon Web Services (AWS)
- S3 (Remote Backend for State Storage)
-DynamoDB (State Locking & Concurrency Control)
- EC2 (Compute Instance Provisioning)

---
###  Architecture Overview
This project provisions:
- An S3 bucket for remote state storage
- A DynamoDB table for state locking
- An EC2 instance for compute provisioning

## Why Remote State?
By default, Terraform stores state locally in terraform.tfstate.
This project uses an S3 backend to:
- Enable remote state management
- Improve team collaboration
- Prevent state corruption
- Support versioning and recovery
- DynamoDB is configured to provide state locking, preventing multiple concurrent Terraform runs.

---

###Project Structure
```json
{

.
├── backend.tf
├── main.tf
├── outputs.tf
├── .terraform.lock.hcl
├── README.md
└── .gitignore
}

## File Descriptions
backend.tf → Configures S3 remote backend
main.tf → Defines AWS resources
outputs.tf → Defines output values
.terraform.lock.hcl → Provider version lock file
.gitignore → Prevents committing local state and provider binaries

---
### Backend Configuration (S3 + DynamoDB)

Example backend configuration:
```json
{

terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "week5/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

---
## Key Features
bucket → S3 bucket storing state file
key → Logical path to state file
dynamodb_table → Enables state locking
encrypt = true → Enables server-side encryption

# How to Run the Project
1. Initialize Terraform

```json
{

terraform init

}

- Downloads required providers
- Configures remote backend

2. Validate Configuration 
```json
{

terraform validate

}

3. Preview Infrastructure Plan
```json
{

terraform plan

}

4. Apply Configuration 
```json
{

terraform apply

}

- Confirm with yes when prompted

5. Destroy Infrastructure (Optional Cleanup)

```json
{

terraform destroy

}

## Best Practices Implemented
Remote state storage (S3 backend)
State locking with DynamoDB
Encryption enabled for backend
.gitignore excludes:
.terraform/
*.tfstate
*.tfplan
Version locking via .terraform.lock.hcl

# Important Notes
The .terraform directory is excluded from version control because it contains provider binaries and local cache files.
State files are stored remotely and should not be committed to GitHub.
Always run terraform init after cloning the repository.

## Learning Outcomes
Through this project, I gained practical experience in:
- Automating cloud infrastructure provisioning
- Managing Terraform state remotely
- Implementing state locking mechanisms
- Handling Git version control issues with large provider binaries
- Debugging backend configuration and initialization issues

## Project Outcome
Infrastructure provisioning was successfully automated using Terraform, with secure remote state management via S3 and DynamoDB.
This project demonstrates readiness for real-world Infrastructure as Code workflows and collaborative cloud infrastructure management.