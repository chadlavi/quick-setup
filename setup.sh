#!/bin/zsh

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set zsh_aliases
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/zsh_aliases)" >> ~/.zsh_aliases
cat << 'EOF' >> .zshrc
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi
EOF

# set vimrc
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/vimrc)" >> ~/.vimrc

# set nanorc
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/nanorc)" >> ~/.nanorc

# install homebrew
xcode-select --install && \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
# install a few essential programs with homebrew
brew install git vim nano tmux w3m
