#!/bin/bash

# Symlink function
function symlink() {
    mkdir -p "$(dirname "$2")" # Ensure the destination directory exists
    ln -sf "$1" "$2"
    echo "Symlinked $1 to $2"
}

# Ensure all necessary directories in home exist
mkdir -p ~/.config/nvim

# Create symlinks for Zsh
symlink ~/.dotfiles/zsh/.zshrc ~/.zshrc
symlink ~/.dotfiles/zsh/aliases.zsh ~/.aliases.zsh
symlink ~/.dotfiles/zsh/functions.zsh ~/.functions.zsh

# Create symlinks for Bash
symlink ~/.dotfiles/bash/.bashrc ~/.bashrc
symlink ~/.dotfiles/bash/.bash_profile ~/.bash_profile
symlink ~/.dotfiles/bash/aliases.bash ~/.aliases.bash

# Create symlinks for Git
symlink ~/.dotfiles/git/.gitconfig ~/.gitconfig
symlink ~/.dotfiles/git/.gitignore_global ~/.gitignore_global

# Create symlinks for Vim
symlink ~/.dotfiles/vim/.vimrc ~/.vimrc
symlink ~/.dotfiles/vim/plugins.vim ~/.vim/plugins.vim

# Create symlinks for Neovim
symlink ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
