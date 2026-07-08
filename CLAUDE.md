# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.

# Project Overview

This project is a static HTML and CSS portfolio website that will be deployed to AWS using Terraform. The objective is to automate the provisioning of AWS infrastructure and deploy the website following Infrastructure as Code (IaC) best practices.

The infrastructure consists of:

- Amazon S3 for static website hosting
- Amazon CloudFront as the CDN
- Terraform for infrastructure provisioning
- GitHub Actions for CI/CD deployment

Do not recommend manual deployment unless specifically requested.

---

# Project Structure

- index.html — Main portfolio page
- style.css — Website styling
- images/ — Static assets
- terraform/ — Terraform configuration files
- .github/workflows/ — GitHub Actions workflow
- README.md — Project documentation

---

# Coding Standards

- Preserve the HTML and CSS structure unless requested.
- Keep the website lightweight.
- Do not introduce React, Vue, Angular, or JavaScript frameworks.
- Follow Terraform best practices.
- Write reusable Terraform modules whenever appropriate.
- Always explain infrastructure changes before applying them.

---

# Deployment Rules

This project must be deployed using Terraform.

Preferred deployment workflow:

1. Validate Terraform configuration.
2. Run `terraform fmt`.
3. Run `terraform validate`.
4. Run `terraform plan`.
5. Explain the proposed infrastructure changes.
6. Run `terraform apply` only after user confirmation.
7. Verify that the website is accessible through CloudFront.

Never recommend manual AWS Console configuration unless explicitly requested.

---

# AWS Infrastructure

Preferred services:

- Amazon S3
- Amazon CloudFront
- AWS Certificate Manager (ACM)
- Route 53 (if a custom domain is used)
- IAM following least privilege
- GitHub Actions with OIDC authentication

Avoid using long-term AWS access keys whenever possible.

---

# Collaboration Rules

When modifying files:

- Explain what will change before editing.
- Do not delete existing files without permission.
- Preserve existing comments unless they are incorrect.
- Prefer PowerShell commands because development is done on Windows.

If multiple solutions exist, recommend the simplest and most maintainable approach first.