#!/bin/zsh

# install homebrew
xcode-select --install && \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
# install a few essential programs with homebrew
brew install git vim nano tmux w3m

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set vimrc
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/vimrc)" > ~/.nanorc

# set nanorc
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/nanorc)" > ~/.nanorc
