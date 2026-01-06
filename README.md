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
- **Git** - Version control system installed on your local machine for cloning repositories and managing code
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

#### Install Git in Ubuntu

Update package manager and install Git
```
sudo apt update
sudo apt install -y git
```

Verify Git installation
```
git --version
```
#### Configure Git After Installation

After installing Git on any operating system, configure your username and email:
```
git config --global user.name "your-github-username"
git config --global user.email "your-github-email@example.com"
```
Replace ```your-github-username``` and ```your-github-email@example.com``` with your actual GitHub credentials.

Verify your configuration:
```
git config --global --list
```
This should display your username and email.

#### Clone Repository Locally

Clone the repository to your local machine using SSH:


```
git clone git@github.com:kamariza30/devops-bootcamp-final-project-kamariza.git

```
Create Project Structure
Inside the cloned repository, create the following directory structure:
```
devops-bootcamp-final-project-kamariza/
├── terraform/
├── ansible/
└── README.md
```
Open Project in VS Code
Navigate to the project directory in your terminal and open VS Code:
```
cd Documents/devops-bootcamp-final-project-kamariza/
code .
```
### Install Docker on Ubuntu

Quick Installation
For detailed step-by-step instructions, visit the official Docker documentation:
[Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

### Install terraform on Ubuntu

For complete installation instructions across all operating systems, visit the official HashiCorp documentation:
[Install Terraform](https://developer.hashicorp.com/terraform/install)

### Install Ansible

Installation Steps
Update your system packages:
```
sudo apt update && sudo apt upgrade -y
```
Install pipx (Python package manager):
```
sudo apt install pipx
```
Ensure pipx binaries are in your PATH:
```
pipx ensurepath
```
After installation, verify that Ansible is installed correctly by checking its version:
```
ansible --version
```
This command will display the installed Ansible version and Python interpreter details.

Note: You may need to log out and log back in, or open a new terminal window for the ```pipx ensurepath``` changes to take effect.

### Create Your First Terraform File

#### Step 1: Open VS Code
Navigate to your project directory and open VS Code:
```
cd Documents/devops-bootcamp-final-project-kamariza/
code .
```
#### Step 2: Create main.tf in Terraform Folder
1. In the VS Code file explorer, navigate to the ```terraform/``` folder
2. Right-click inside the terraform/ folder and select New File
3. Name the file ```main.tf```
#### Step3: Add Terraform Configuration
Copy and paste the following code into your ```main.tf``` file and save the file (```Ctrl+S```):
```
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.25.0"
    }
  }
}
```
Your project structure should now look like this:
```
devops-bootcamp-final-project-kamariza/
├── terraform/
│   └── main.tf
├── ansible/
└── README.md
```
#### What this code does
This Terraform configuration block:
- Specifies the required provider (AWS)
- Sets the source to HashiCorp's official AWS provider
- Locks the AWS provider version to 6.25.0 for consistency and reproducibility