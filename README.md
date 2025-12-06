# AWS AMI Project - Terraform Overview & Usage

## Overview

This repository provides a Terraform-based approach for automating the creation and management of Amazon Machine Images (AMIs) on AWS. Its purpose is to enable repeatable, secure, and scalable AMI workflows using Infrastructure as Code principles.

---

## Purpose

- **Automate AMI Creation**: Create, configure, and register custom AMIs with updated software and security patches.
- **Manage AMI Lifecycle**: Handle AMI versioning, sharing, tagging, and clean-up efficiently.
- **Reusable Infrastructure**: Parameterize key settings for diverse environments and use cases.

---

## Features

- **Modular structure**: Organizes resources for maintainability and re-use.
- **Variables**: Customizes behavior/environment via `variables.tf` and `terraform.tfvars`.
- **Detailed tagging**: Tracks asset ownership and usage.
- **Clear outputs**: Facilitates downstream integrations.
- **Security-conscious**: Uses IAM roles and policies based on least privilege (where implemented).
- **Backend state**: Prepared for remote state configurations for team collaboration.

---

## Getting Started

### Prerequisites

- Terraform CLI (recommended v1.0+)
- AWS credentials with EC2, IAM, and AMI management permissions

### Steps

1. **Clone the Repository**
    ```bash
    git clone https://github.com/iftekharchowdhuryJOY/aws-ami-project.git
    cd aws-ami-project
    ```
2. **Configure Variables**
    - Edit `terraform.tfvars` as needed for region, AMI base, instance type, etc.
3. **Initialize & Plan**
    ```bash
    terraform init
    terraform plan
    ```
4. **Apply Infrastructure**
    ```bash
    terraform apply
    ```

---

## Structure

- **main.tf**: Core infrastructure definition.
- **variables.tf**: Input parameters for customization.
- **outputs.tf**: Key resource outputs post-deployment.
- **modules/**: For reusable code blocks.
- **versions.tf**: Provider and Terraform version constraints.

---

## Security Guidelines

- Restrict IAM permissions granted to Terraform.
- Ensure sensitive information is not baked into AMIs.
- Use tagging and versioning for resource tracking.
- Automate AMI retirement/deprecation to reduce risk.

---

## Recommendations

- Implement automated AMI validation tests.
- Integrate image builds into CI/CD workflows (e.g., GitHub Actions).
- Prepare variable support for multi-region deployments.
- Use AWS Secrets Manager or Parameter Store for secrets.
- Consider compliance checks and drift detection tools.

---

## Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS AMI Docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)

---