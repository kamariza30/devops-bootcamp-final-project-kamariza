# DevOps Bootcamp Final Project

## Project Overview

This project demonstrates proficiency across the full DevOps lifecycle:

- **Infrastructure Provisioning** — Deploy AWS resources programmatically using Terraform, enabling reproducible and version-controlled infrastructure.
- **Configuration Management** — Automate server setup and application configuration using Ansible for consistency across environments.
- **Containerization and Deployment** — Build, push, and deploy containerized applications to Amazon ECR and EC2 using Docker and CI/CD automation.
- **Observability and Monitoring** — Implement comprehensive monitoring and visualization using Prometheus for metrics collection and Grafana for dashboards.
- **DevOps Practices** — Leverage automation, CI/CD pipelines, and industry best practices to streamline development and deployment workflows.
- **Technical Documentation** — Maintain clear, accessible project documentation published via GitHub Pages for knowledge sharing and project transparency.

## Project Scope and Architecture

### Infrastructure and Deployment Focus

All AWS infrastructure is provisioned declaratively using Terraform, ensuring repeatable and version-controlled deployments. Server configuration is managed entirely through Ansible playbooks, enabling consistent and idempotent infrastructure state across all environments. The project prioritizes infrastructure automation and deployment orchestration rather than application development.

### CI/CD Pipeline

The GitHub Actions workflow automates two primary tasks: publishing documentation updates and managing container image delivery. The pipeline clones the Ansible playbook repository to the Ansible controller, then builds Docker images, pushes them to Amazon ECR, and triggers deployment through SSM commands to EC2 instances running the containerized application.

## Project Requirements and Setup

### Prerequisites

The following tools and accounts are required to complete this project:

- **Visual Studio Code** — A code editor for writing Infrastructure as Code and configuration files
- **AWS Account** — An active AWS account with cloud resources and CI/CD permissions
- **GitHub Account** — A GitHub account for version control and CI/CD automation
- **Docker** — Container runtime installed locally for building and testing Docker images
- **Ansible** — Configuration management tool installed locally for playbook development and testing

### Development Environment Setup

#### Install Visual Studio Code

Download Visual Studio Code from the [official website](https://code.visualstudio.com/download). Linux users can download directly from the same link.

#### Configure VS Code Extensions

Install the following extensions to enhance your Infrastructure as Code development:

- **Terraform Extension** — Provides syntax highlighting, code completion, and validation for Terraform files
- **GitHub Copilot** — Leverages AI to suggest code completions and auto-complete Infrastructure as Code blocks based on context, significantly accelerating Terraform and Ansible playbook development

#### Set Up AWS Account

Sign up for an [AWS Free Tier account](https://aws.amazon.com/free/) to receive $200 in promotional credits for learning and experimentation.

#### Initialize GitHub Repository

Create a new GitHub repository named `devops-bootcamp-final-project-kamariza` (or your preferred naming convention) to host your project code.

#### Clone Repository Locally

Clone the repository to your local machine using SSH:


git clone git@github.com:kamariza30/devops-bootcamp-final-project-kamariza.git

Create Project Structure
Inside the cloned repository, create the following directory structure:
devops-bootcamp-final-project-kamariza/
├── terraform/
├── ansible/
└── README.md

Open Project in VS Code
Navigate to the project directory in your terminal and open VS Code:
cd Documents/devops-bootcamp-final-project-kamariza/
code .

This opens the project directory in VS Code, ready for development.