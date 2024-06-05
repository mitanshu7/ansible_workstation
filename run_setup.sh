#!/bin/bash

# Function to install Ansible based on OS type
install_ansible() {
  if [ "$(command -v apt)" ]; then
    echo "Installing Ansible on Ubuntu/Debian..."
    sudo apt update
    sudo apt install -y ansible
  elif [ "$(command -v dnf)" ]; then
    echo "Installing Ansible on Fedora/RedHat..."
    sudo dnf install -y ansible
  else
    echo "This script only supports Ubuntu/Debian and Fedora/RedHat based systems."
    exit 1
  fi
}

# Install Ansible (if not already installed)
if ! hash ansible 2>/dev/null; then
  install_ansible
fi

echo "Ansible installation complete!"

# Run playbook (if Ansible is installed)
if hash ansible 2>/dev/null; then
  echo "Running Playbooks"
  ansible-playbook --ask-become-pass local.yml  # Consider error handling here
else
  echo "Ansible is not installed. Playbook skipped."
fi

echo "Finished setup"
