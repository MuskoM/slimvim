# SlimVim

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/MuskoM/slimvim/releases)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/MuskoM/slimvim/blob/master/LICENSE.md)

A streamlined, portable Vim configuration with automated setup and teardown scripts.

## Prerequisites

- `curl` or `wget`
- Unix-like environment (Linux, macOS, WSL)

## Quick Start

```bash
curl -s https://raw.githubusercontent.com/MuskoM/slimvim/master/setup.sh | bash
# or wget -qO- https://raw.githubusercontent.com/MuskoM/slimvim/master/setup.sh | bash
```

## Features

- 🚀 One-line installation
- 🔍 Fuzzy file finding with FZF
- 🎨 Beautiful Catppuccin theme
- 📊 Sleek status bar with Lightline
- 🌳 Visual undo history with Undotree
- 🗝️ Key binding helper with Which Key
- 🔄 Easy text surrounding with vim-surround
- 🌈 Enhanced syntax highlighting with vim-polyglot
- 🐙 Git integration with vim-fugitive
- 💬 Quick commenting with vim-commentary

## Plugins

SlimVim comes pre-configured with the following plugins:

1. **fzf & fzf.vim**: Fuzzy finder for efficient file and content searching.
2. **catppuccin**: A soothing color scheme for enhanced visual experience.
3. **lightline.vim**: A light and configurable statusline/tabline.
4. **undotree**: Visualize and navigate Vim's powerful undo history.
5. **vim-which-key**: Display available keybindings in a popup.
6. **vim-surround**: Easily add, change, and delete surrounding characters.
7. **vim-polyglot**: A collection of language packs for improved syntax highlighting.
8. **vim-fugitive**: A Git wrapper so awesome, it should be illegal.
9. **vim-commentary**: Comment stuff out with ease.

## Basic Plugin Usage

- **vim-surround**: Use `ys` to add surroundings, `cs` to change, and `ds` to delete.
- **vim-fugitive**: Use `:G` for git status, `:Gblame` for blame, `:Gdiff` for diff.
- **vim-commentary**: Use `gcc` to comment out a line, `gc` for a motion.

For more detailed instructions, use `:help [plugin-name]` in Vim.

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
