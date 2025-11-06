# 🛠️ Terraform AWS Infrastructure Project

*Provision, configure, and manage AWS infrastructure reliably using Terraform.*

---

## 🎯 Project Aim

This project demonstrates **Infrastructure as Code (IaC)** using Terraform on AWS. It automates AWS infrastructure deployment to make it **reproducible, scalable, and secure**.

Goals:

- 🖥️ Provision an **EC2 instance**
- 🔐 Configure **security groups** for controlled access
- 🗝️ Manage **SSH key pairs** for secure login
- ☁️ Store **Terraform state** in S3
- ⚙️ Automate **web server setup**

By following these steps, the project showcases **fully automated infrastructure deployment with minimal manual intervention**.

---

## 📁 Project Structure

```
main.tf      – Main resource definitions
provider.tf  – AWS provider configuration
backend.tf   – Terraform state backend
keypair.tf   – SSH key pair setup
SG.tf        – Security group definitions
InstID.tf    – Instance-specific settings
var.tf       – Variables and defaults
web.sh       – Script to configure web server
.gitignore   – Files to ignore in Git
```

---

## ⚙️ Prerequisites

Before using this project, ensure you have the following:

- **Terraform** installed (v1.5+ recommended)
  ```bash
  terraform -v
  ```
- **AWS Account** with IAM permissions for EC2, S3, and security groups
- **AWS CLI** configured with credentials:
  ```bash
  aws configure
  ```
- Basic knowledge of **EC2, security groups, SSH, and AWS S3**
- Optional: **Bash shell** to run `web.sh` for automated web server setup

---

## 🛠️ Implementation Steps

### 1️⃣ Create EC2 Instance

- Defined EC2 in `main.tf`
- Configured instance type, AMI, key pair, and tags
- Allowed **SSH (22)** and **HTTP (80)** access via security groups

### 2️⃣ Configure Security Groups

- Defined security groups in `SG.tf`
- Opened only necessary ports (22 & 80) for secure access

### 3️⃣ Setup SSH Key Pair

- Managed key pairs in `keypair.tf`
- Enabled secure SSH login to EC2

### 4️⃣ Configure S3 Backend

- Configured `backend.tf` to store Terraform state in **S3**
- Enabled versioning and shared state management for teams

### 5️⃣ Automate Web Server Setup

- Script `web.sh` installs and configures a web server
- Executed via Terraform **provisioners**

### 6️⃣ Apply Terraform

```bash
terraform init      # Initialize Terraform
terraform validate  # Validate configuration
terraform plan      # Preview changes
terraform apply     # Deploy infrastructure
terraform destroy   # Optional cleanup
```

---

## 🧩 Key Learnings

- Writing **modular Terraform code** for AWS resources
- Managing **state in S3** for team collaboration
- Using **provisioners** to automate server setup
- Understanding **security best practices** (SSH keys, SG rules)

---

## 👨‍💻 Author

**Shatrujit**\
*Cloud Infrastructure Automation & IaC Projects*
