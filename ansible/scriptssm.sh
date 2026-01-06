#!/bin/bash
set -e

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install Python and pip
sudo apt install -y python3 python3-pip python3-venv

# Install Ansible system-wide using pip
sudo pip3 install ansible

# Verify installation
ansible --version
