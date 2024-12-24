# Portable Vim Configuration

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/MuskoM/slimvim/releases)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

A streamlined, portable Vim configuration with automated setup and teardown scripts.

## Features

- 🚀 One-line installation
- 🔍 Fuzzy file finding with FZF
- 🎨 Beautiful Catppuccin theme
- 📊 Sleek status bar with Lightline
- 🌳 Visual undo history with Undotree
- ⚡ Optimized for performance


## Prerequisites

- `curl` or `wget`
- Unix-like environment (Linux, macOS, WSL)


## Quick Start

```bash
curl -s  https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/setup.sh | bash
# or wget -qO- https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/setup.sh | bash
```

## Detailed Overview

### setup.sh

Sets up Vim with plugins and configuration.

**Usage:**
```bash
curl -s https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/setup.sh | bash
# or wget -qO- https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/setup.sh | bash
```

### teardown.sh

Resets the Vim environment by removing plugins and configuration.

**Usage:**
```bash
curl -s https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/teardown.sh | bash
# or wget -qO- https://raw.githubusercontent.com/MuskoM/slimvim/refs/heads/master/teardown.sh | bash
```

### .vimrc

Provides a comprehensive Vim configuration. [View .vimrc](https://github.com/MuskoM/slimvim/blob/master/.vimrc)

## Customization

To customize the setup:
1. Fork this repository
2. Modify `.vimrc` as needed
3. Update the URLs in `setup.sh` to point to your fork

## Troubleshooting

- **Issue**: Plugins fail to install
  **Solution**: Ensure you have git installed and can access GitHub

- **Issue**: Color scheme not working
  **Solution**: Make sure your terminal supports 256 colors


## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/MuskoM/slimvim/blob/master/LICENSE.md) file for details.
