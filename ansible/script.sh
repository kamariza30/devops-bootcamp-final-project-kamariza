#!/bin/bash
set -e

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install pipx
sudo apt install -y pipx

# Ensure pipx is on PATH for this script (for Ubuntu, it usually installs to /usr/bin/pipx)
# Install Ansible with pipx
pipx install --include-deps ansible

# Configure PATH for future shells
pipx ensurepath

# Verify installation
ansible --version
