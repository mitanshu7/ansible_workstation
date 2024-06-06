## Ansible Workstation Automation

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

### Debian Tasks
1. **Download GitHub CLI archive keyring** - Downloads the keyring for the GitHub CLI.
2. **Add GitHub CLI repository** - Adds the GitHub CLI repository.
3. **Update APT package index** - Updates the package index for APT.
4. **Install GitHub CLI** - Installs the GitHub CLI.
5. **Install Development Tools** - Installs development tools.
6. **Enable non-free repositories** - Enables non-free repositories.
7. **Update cache (if repository changed)** - Updates the package cache if the repository has changed.
8. **Install Nvidia Drivers** - Installs Nvidia drivers.
9. **Add alias for cleaning up packages** - Adds a command alias for cleaning up packages.
10. **Upgrade all packages to their latest version** - Upgrades all installed packages to their latest version.
11. **Install htop package** - Installs the htop package.
12. **Download fastfetch** - Downloads the fastfetch tool.
13. **Install fastfetch.deb** - Installs the fastfetch package from a .deb file.

### Fedora Tasks
1. **Ensure dnf-command(config-manager) is installed** - Ensures the dnf-command(config-manager) is installed.
2. **Add GitHub CLI repository** - Adds the GitHub CLI repository.
3. **Install GitHub CLI** - Installs the GitHub CLI.
4. **Install Development Tools** - Installs development tools.
5. **Importing (free) key** - Imports the free repository key.
6. **Importing (non-free) key** - Imports the non-free repository key.
7. **Enable free repositories** - Enables free repositories.
8. **Enable non-free repositories** - Enables non-free repositories.
9. **Update cache (if repository changed)** - Updates the package cache if the repository has changed.
10. **Install Nvidia Drivers** - Installs Nvidia drivers.
11. **Pause for 5 minutes for the kernel modules to load up** - Pauses to allow kernel modules to load.
12. **Rebuild kernel modules** - Rebuilds the kernel modules.
13. **Rebuild the initramfs image** - Rebuilds the initramfs image.
14. **Pause for 3 minutes for the configuration to be read from the updated kernel modules** - Pauses to read configuration from updated kernel modules.
15. **Install htop package** - Installs the htop package.

### Common Tasks
1. **Install Joplin (Debian and Fedora)** - Installs Joplin.
2. **Add Cloudflare GPG key (Debian)** - Adds the Cloudflare GPG key.
3. **Add Cloudflare WARP repository (Debian)** - Adds the Cloudflare WARP repository.
4. **Update APT package index (Debian)** - Updates the APT package index.
5. **Install Cloudflare WARP (Debian)** - Installs Cloudflare WARP.
6. **Add Cloudflare WARP repository (Fedora)** - Adds the Cloudflare WARP repository.
7. **Update YUM package index (Fedora)** - Updates the YUM package index.
8. **Install Cloudflare WARP (Fedora)** - Installs Cloudflare WARP.
9. **Setup Cloudflare (Debian and Fedora)** - Sets up Cloudflare.
10. **include_tasks** - Includes additional tasks from other files.

These tasks cover a range of activities such as installing software, updating repositories, and configuring system settings for both Debian and Fedora environments.


## Getting Started:

1. Clone this repo:
 `git clone https://github.com/mitanshu7/ansible_workstation.git`
2. Change directory:
`cd ansible_workstation`
3. Run the bash script:
`bash run_setup.sh`
4. Enjoy your tea/coffee till your machine sets itself up for you!

### **Contributing:**

Feel free to contribute by adding configurations for your favorite tools or customizing the playbooks to your workflow.


### **Additional Information:**

* This repository uses Ansible roles (optional) to organize configurations for specific functionalities.
* Documentation for individual playbooks and configurations can be found within the respective files (optional).
* Consider using a version control system (like Git) to manage your configurations.
* Shoutout to LearnLinuxTV for all the resources!

### **Disclaimer:**

This repository is provided for educational purposes and should be used at your own discretion. The configurations might need adjustments depending on your specific environment and preferences.
