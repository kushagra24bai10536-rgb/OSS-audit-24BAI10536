#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Alias concept demonstrated: You could add 'alias manifesto="./script5.sh"' to your ~/.bashrc file to run this instantly from anywhere!

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and write it to OUTPUT using echo and >>
echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every single day, I rely on open-source tools like $TOOL to learn and create. To me, the philosophy of open source can be summarized by one concept: $FREEDOM. Standing on the shoulders of giants inspires me to give back to the community. If I had unlimited time, I would build $BUILD and share it freely with the world so that others could learn from and improve upon my work." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------------------"
cat "$OUTPUT"
