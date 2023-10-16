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

# open iTerm2 downloads page
open "https://iterm2.com/downloads.html"

# recommend iTerm2 settings

cat << 'EOF'

---

You'll want to set up a few things in iTerm2:

1. use "natural text editing"
  - go to Preferences > Profiles > Keys > Key Mappings. 
  - Use the "Presets..." menu to select "Natural Text Editing".
2. make iTerm2 default terminal
  - iTerm2 > Make iTerm2 Default Terminal (or keyboard shortcut CTRL-SHIFT-CMD-\)
EOF