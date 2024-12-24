#!/bin/bash

set -e

# Function to remove a file or directory
remove_item() {
    if [ -e "$1" ]; then
        rm -rf "$1"
        echo "Removed $1"
    else
        echo "Warning: $1 not found"
    fi
}

# Remove Vim-Plug and plugins
remove_item ~/.vim/plugged
remove_item ~/.vim/autoload/plug.vim

# Remove undo directory
remove_item ~/.vim/undodir

# Remove .vimrc
remove_item ~/.vimrc

echo "Vim configuration and plugins removed!"
