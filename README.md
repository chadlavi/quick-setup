# Quick zsh setup for new mac

A one-liner quick setup script for some of my personal comfort preferences on a new mac

```sh
sh -c "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/setup.sh)"
```

## What does it do?

1. installs `homebrew`
    - uses homebrew to install `git` `vim` `nano` `tmux`, and `w3m`
1. installs `ohmyzsh`
1. sets some `.zsh_aliases` and sources them in `.zshrc`
1. sets a `.vimrc`
1. sets a `.nanorc`

## Just dotfiles

### `.zsh_aliases`

Set some zsh aliases and source them in `.zshrc`

```sh
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/zsh_aliases)" >> ~/.zsh_aliases
cat << 'EOF' >> .zshrc
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi
EOF
```

### `.vimrc`

Set your `.vimrc` to the contents of [./vimrc](./vimrc)

```sh
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/vimrc)" > ~/.nanorc
```

### `.nanorc`

Set your `.nanorc` to the contents of [./nanorc](./nanorc)

```sh
echo "$(curl -fsSL https://gitlab.com/chadlavimoniere/quick-setup/-/raw/main/nanorc)" > ~/.nanorc
```

## See also

- <https://brew.sh/>
- <https://ohmyz.sh/#install>
