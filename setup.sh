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

# Install Vim-Plug
download_file "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" "~/.vim/autoload/plug.vim"

# Create undo directory
mkdir -p ~/.vim/undodir
echo "Created undo directory"

# Download .vimrc from GitHub
download_file "https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/.vimrc" "~/.vimrc"

# Run PlugInstall
if vim +PlugInstall +qall; then
    echo "Plugins installed successfully"
else
    echo "Error: Failed to install plugins"
    exit 1
fi

echo "Vim setup complete!"
