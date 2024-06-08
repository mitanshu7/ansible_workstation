# Ansible Workstation Automation

Ansible automates the management of remote systems and controls their desired state.
This repository holds Ansible playbooks and configurations to automate the setup and configuration of my workstation environment. 

**Features:**

* **Effortless Setup:** Streamline the installation of essential software, packages, and system configurations.
* **Consistent Environment:** Ensure a consistent development environment across different machines.
* **Customization:** Easily tailor the playbooks to your specific needs and preferences.
* **Reduced Errors:** Minimize manual configuration errors and ensure repeatability.

**Supported Systems:**

* This repository is currently configured for **Debian** and **Fedora**.

## What it does?

Currently:

### Base Role (applies to all machine):

1. Setup Bash aliases for frequently used commands.
2. Clean up apps like gnome-games, libreoffice, firefox.
3. Upgrade all installed packages.
4. Install Development packages like gcc and git.
5. Enable Non-Free repositories to install proprietary software.
6. Install Nvidia-Drivers if the flag is enabled.
7. Setup base miniforge.
8. Install github cli.
9. Install misc packages.
10. Install Tailscale VPN.
11. Install and enable cron.

### Workstation Role (Applies to machines in this group):
1. Copy and setup OCI key if the flag is enables.
2. Install various apps from flatpak.
3. Install VS Code.
4. Install Chrome Browser, for compatibility purposes.
5. Setup my preferred Miniforge envs.
6. Install Cloudflare VPN.
7. Install Turbo button for my acer laptop.
8. Modify Gnome settings, appearances, and key bindings.


## Getting Started:

1. Clone this repo:
 `git clone https://github.com/mitanshu7/ansible_workstation.git`

>tip: [bit.ly/mitans](bit.ly/mitans) points to this repo to download in case git isn't available on your new installation.

2. Change directory:
`cd ansible_workstation`
3. Modify parameters in `host_vars/localhost` and `group_vars/workstation/vars` to your liking.
4. Run the bash script:
`bash run_setup.sh`
4. Enter the `sudo` and `ansible-vault` password.
5. Enjoy your tea/coffee till your machine sets itself up for you!

### **TODO:**

1. Add/copy other ssh keys to vault too.
2. Maintain a vault-free branch to enable public use.
3. Make the code more efficient for:
    1. Chrome
    2. miniforge
4. Have a list of flags for software to be installed.  

### **Additional Information:**

* This repository uses Ansible roles (optional) to organize configurations for specific functionalities.
* Documentation for individual playbooks and configurations can be found within the respective files (optional).
* Consider using a version control system (like Git) to manage your configurations.
* Shoutout to LearnLinuxTV for all the resources!

### **Disclaimer:**

This repository is provided for educational purposes and should be used at your own discretion. The configurations might need adjustments depending on your specific environment and preferences.
