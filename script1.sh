#!/bin/bash
# Script 1: System Identity Report
# Author: KUSHAGRA YADAV
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME=#!/bin/bash
# Script 1: System Identity Report
# Author: KUSHAGRA YADAV
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="KUSHAGRA YADAV"
SOFTWARE_CHOICE="[Your Chosen Software, e.g., Firefox]"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
CURRENT_DATE=$(date)
DISTRO=$(cat /etc/os-release | grep -E '^PRETTY_NAME=' | cut -d '"' -f 2)
OS_LICENSE="GNU GPL (General Public License)" 

# --- Display ---
echo "======================================"
echo "          Open Source Audit           "
echo "======================================"
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "======================================"
echo "OS Distro    : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "OS License   : $OS_LICENSE"
SOFTWARE_CHOICE="[Your Chosen Software, e.g., Firefox]"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
CURRENT_DATE=$(date)
DISTRO=$(cat /etc/os-release | grep -E '^PRETTY_NAME=' | cut -d '"' -f 2)
OS_LICENSE="GNU GPL (General Public License)" 

# --- Display ---
echo "======================================"
echo "          Open Source Audit           "
echo "======================================"
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "======================================"
echo "OS Distro    : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "OS License   : $OS_LICENSE"
