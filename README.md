# The Open Source Audit | Capstone Project

## Project Overview
This repository contains the technical components and documentation for the **Open Source Audit** capstone project. The project involves a structured investigation into a specific open-source software project, analyzing its historical origins, licensing model, and its technical footprint within a Linux environment.

## Chosen Software
**Software Name:** [Insert your choice here, e.g., VLC Media Player or Git]  
**Category:** [Insert Category, e.g., Multimedia or Version Control]  
**License:** [Insert License, e.g., GPL v2 or MPL 2.0]

---

## Repository Contents

### 1. Project Report (`OSSCapstoneProject.pdf`)
A detailed 12-16 page report covering:
* **Origin and Philosophy:** Research into why the software was created and the problem it solved.
* **License Analysis:** A deep dive into the specific legal freedoms granted by the project's license.
* **Linux Footprint:** Documentation of installation methods, key directories (e.g., `/etc`, `/var/log`), and service management.
* **Ecosystem Map:** Analysis of dependencies, community governance, and its role in the FOSS landscape.
* **Comparative Audit:** A critical side-by-side comparison with proprietary alternatives.

### 2. Shell Scripts (`scripts/`)
Five Bash scripts demonstrating Linux automation and system administration skills:

| Script | Name | Description |
| :--- | :--- | :--- |
| **Script 1** | `system_identity.sh` | Generates a system welcome screen with kernel and uptime info. |
| **Script 2** | `package_inspector.sh` | Checks if the software is installed and provides a philosophy note. |
| **Script 3** | `disk_auditor.sh` | Audits directory sizes and permissions using loops. |
| **Script 4** | `log_analyzer.sh` | Parses log files to count specific keywords like "ERROR". |
| **Script 5** | `manifesto_gen.sh` | An interactive tool to generate a personalized OSS manifesto. |

---

## Requirements & Usage

### Prerequisites
* A Linux-based operating system (Ubuntu, Fedora, etc.).
* Bash shell environment.
* `root` or `sudo` privileges (for some directory audits and package checks).

### Running the Scripts
1. **Clone the repository:**
   ```bash
   git clone [Your-
