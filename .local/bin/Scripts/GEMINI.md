# Directory Overview

This directory contains a collection of personal utility scripts designed to streamline development and networking tasks. The scripts are written in Bash and rely on several external command-line tools.

## Key Files

*   `connect-vpn.sh`: This script facilitates connecting to a VPN. It reads configuration details from `~/Documents/Configs/vpnhosts.conf`, presents a menu of available VPNs, retrieves passwords from the `pass` password manager, and establishes the connection using `openconnect`.
*   `dev-env.sh`: This script automates the setup of a development environment using `tmux`. It scans for Git repositories within the `~/Documents` directory, allows the user to select a project (using `fzf` for an interactive menu if available), and creates a new `tmux` session with pre-configured windows for an editor, `lazygit`, and a general-purpose terminal.
*   `utils.sh`: This is a helper script sourced by the other scripts. It provides a function to check for the presence of required command-line dependencies and suggests appropriate installation commands for Arch and Debian-based Linux distributions.
*   `.gitignore`: This file is configured to ignore `*.out` files, which are likely temporary output files.
*   `LICENSE`: Contains the license for the scripts in this directory.

## Usage

These scripts are intended to be run directly from the command line. For example, to start a new development session, you would run:

```bash
./dev-env.sh
```

To connect to a VPN, you would run:

```bash
./connect-vpn.sh
```

### Dependencies

The scripts depend on the following external tools:

*   **`connect-vpn.sh`**: `openconnect`, `pass`
*   **`dev-env.sh`**: `tmux`, `nvim`, `lazygit`, `fzf`, `sed`, `find`

The `utils.sh` script will automatically check for these dependencies and provide installation instructions if any are missing.
