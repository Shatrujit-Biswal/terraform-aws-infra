# Terraform AWS Infrastructure Project

This repository demonstrates how to provision AWS infrastructure using Terraform. The project automates the setup of cloud resources, making it easy to deploy, manage, and scale infrastructure in a reproducible and reliable way.

## 🎯 Aim of the Project

The aim of this project was to learn and implement **Infrastructure as Code (IaC)** using Terraform to:  

- Provision an EC2 instance on AWS.  
- Configure security groups for controlled access.  
- Manage SSH key pairs for secure login.  
- Store Terraform state safely using S3.  
- Automate web server setup on the EC2 instance.

By following these steps, the project showcases how to fully automate infrastructure deployment with minimal manual intervention.

## 🛠️ How It Was Achieved

The project uses Terraform to define infrastructure as code. Key steps include:

### Step 1: Create EC2 Instance
- Defined an EC2 instance in `main.tf`.
- Configured instance type, AMI, key pair, and tags.
- Allowed SSH and HTTP access via security groups.

### Step 2: Configure Security Groups
- Defined security groups in `SG.tf`.
- Opened ports 22 (SSH) and 80 (HTTP) for the EC2 instance.
- Ensured only necessary traffic can reach the instance.

### Step 3: Setup SSH Key Pair
- Managed key pairs in `keypair.tf`.
- Enabled secure SSH access to the EC2 instance.

### Step 4: Configure S3 Backend
- Used `backend.tf` to store Terraform state in S3.
- Ensured state is secure, versioned, and sharable among team members.

### Step 5: Automate Web Server Setup
- Created `web.sh` to automatically install and configure a web server on the EC2 instance.
- Executed the script via Terraform provisioners.

### Step 6: Apply Terraform
- Initialized Terraform using `terraform init`.
- Validate Terraform using `terraform validate`.
- Checked resources with `terraform plan`.
- Deployed infrastructure using `terraform apply`.
- Optional cleanup via `terraform destroy`.

## 📁 Project Structure

- `main.tf` – Main resource definitions.  
- `provider.tf` – AWS provider configuration.  
- `backend.tf` – Terraform state backend configuration.  
- `keypair.tf` – SSH key pair setup.  
- `SG.tf` – Security group definitions.  
- `InstID.tf` – Instance-specific settings.  
- `var.tf` – Variables and default values.  
- `web.sh` – Script to configure web server.  
- `.gitignore` – Files to ignore in Git.
