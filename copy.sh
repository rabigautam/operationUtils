#! /bin/bash
if ! command -v xclip &> /dev/null; then
    echo "xclip is not installed. Installing..."
    sudo apt-get update
    sudo apt-get install xclip
    echo "xclip installed successfully."
fi
xclip -selection clipboard -i $@

