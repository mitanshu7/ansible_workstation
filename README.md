# Ansible Workstation Automation

[Ansible](https://www.ansible.com/) automates the management of remote systems and controls their desired state.
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
1. Copy and setup my encrypted SSH keys if the flag is enabled.
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

- [x] Add/copy other ssh keys to vault too.(6a4306d6824bee871f2e95881cbcb92327139ec2)
- [ ] Maintain a vault-free branch to enable public use.
- [ ] Make the code more efficient for:
    - [x] Chrome (6393cd1af12cb4e51e5f629666ebcb7e8486eb81)
    - [x] miniforge (6393cd1af12cb4e51e5f629666ebcb7e8486eb81)
- [ ] Add kindle ssh key and alias
- [ ] Have a list of flags for software to be installed.
- [ ] Documentation for individual playbooks and configurations.
- [ ] Setup a user `ansible` and configure `ansible-pull` for an up-to date system.
- [ ] Make sure the setup work on a multi-user env without disrupting any other user in the os

### **Additional Information:**

* This repository uses Ansible roles to organize configurations for specific functionalities.
* Shoutout to LearnLinuxTV for all the resources!

### **Disclaimer:**

This repository is provided for educational purposes and should be used at your own discretion. The configurations might need adjustments depending on your specific environment and preferences.
