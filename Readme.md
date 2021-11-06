# .stowfiles
A repository for dotfiles and some settings. GNU software stow is used to control dotfiles and setting files.

# Stow
```stow $folder_name``` makes symlinks of files inside the folder.

# Cross platform settings
A variable which indicates the OS will be set dynamically on shell startup.  
See ```$echo CUR_OS```

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

