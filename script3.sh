#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# Change this variable to match your chosen software's config directory:
SOFTWARE_CONFIG_DIR="/etc/firefox" 

echo "Directory Audit Report"
echo "======================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "------------------------------------------------"
echo "Checking chosen software config directory:"
if [ -d "$SOFTWARE_CONFIG_DIR" ]; then
    PERMS=$(ls -ld $SOFTWARE_CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "$SOFTWARE_CONFIG_DIR => Permissions/Owner: $PERMS"
else
    echo "$SOFTWARE_CONFIG_DIR does not exist on this system."
fi
