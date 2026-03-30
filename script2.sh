#!/bin/bash
# Script 2: FOSS Package Inspector
# Usage: ./script2.sh <package_name> (e.g., ./script2.sh firefox)

PACKAGE=$1 

if [ -z "$PACKAGE" ]; then
    echo "Please provide a package name. Example: $0 firefox"
    exit 1
fi

# Check if package is installed (using dpkg for Debian/Ubuntu or rpm for RedHat)
if command -v $PACKAGE &> /dev/null || dpkg -s $PACKAGE &> /dev/null || rpm -q $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed."
    # Extracting version generically 
    VERSION=$(dpkg -l $PACKAGE 2>/dev/null | grep ^ii | awk '{print $3}' || rpm -qi $PACKAGE 2>/dev/null | grep Version | awk '{print $3}')
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

echo "--- Philosophy Note ---"
case $PACKAGE in
    httpd|apache2) echo "Apache: the web server that built the open internet" ;;
    mysql|mariadb) echo "MySQL: open source at the heart of millions of apps" ;;
    firefox) echo "Firefox: A nonprofit fighting for an open web" ;;
    vlc) echo "VLC: Plays anything - built by students in Paris" ;;
    python3) echo "Python: A language shaped entirely by community" ;;
    *) echo "$PACKAGE: A valuable part of the open-source ecosystem." ;;
esac
