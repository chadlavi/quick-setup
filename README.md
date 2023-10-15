# Quick zsh setup for new mac

A one-liner quick setup script for some of my personal comfort preferences on a new mac

```sh
sh -c "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/setup.sh)"
```

## What does it do?

1. installs `homebrew`
    - uses homebrew to install `git` `vim` `nano` `tmux`, and `w3m`
1. installs `ohmyzsh`
1. sets a `.vimrc`
1. sets a `.nanorc`

## Just dotfiles

### `.vimrc`

Set your `.vimrc` to the contents of <./vimrc>

```sh
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/vimrc)" > ~/.nanorc
```

### `.nanorc`

Set your `.nanorc` to the contents of <./nanorc>

```sh
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/nanorc)" > ~/.nanorc
```