#!/bin/bash

set -e

# Function to download a file
download_file() {
    local url=$1
    local dest=$2
    if curl -fLo "$dest" --create-dirs "$url"; then
        echo "Downloaded $dest"
    else
        echo "Error: Failed to download $url"
        exit 1
    fi
}

# Download .vimrc from GitHub
download_file "https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/.vimrc" "~/.vimrc"

echo "Vim setup complete!"
