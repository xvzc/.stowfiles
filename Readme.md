# .stowfiles
A repository for dotfiles and some settings. GNU software stow is used to control these files.

# Cross platform setting
A variable which indicates the OS is set dynamically on shell startup. See ```$echo CUR_OS```

## Dependencies
```
zsh
oh-my-zsh
node
vim-plug
tmux
oh-my-tmux
fzf
ripgrep
sdkman
```

# Get .tmux.reset.conf
```bash
$ tmux -f /dev/null -L temp start-server \; list-keys > ./.tmux.reset.conf

```

# When CocInstall doesn't work with request timeout message
Especailly on WSL, There is an issue that the DNS server is set to a wrong destination, so temporary solution is to set DNS server like below.
```
echo "104.16.17.35\tregistry.npmjs.org" >> /etc/hosts
```

# Stow
Use ```stow $folder_name``` to make symlink of stowfiles
