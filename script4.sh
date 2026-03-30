#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <path_to_log_file> [keyword]"
    exit 1
fi

# Do-while style retry if the file is missing or empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is missing or empty. Please provide a valid log file."
    read -p "Enter new log file path (or 'quit' to exit): " LOGFILE
    if [ "$LOGFILE" == "quit" ]; then exit 0; fi
done

# Read line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--- Last 5 matching lines ---"
tail -n 100 "$LOGFILE" | grep -i "$KEYWORD" | tail -n 5
