# dotfiles.git

dotfiles to sync vim/bash/others

```sh
cd $HOME
git clone https://github.com/git-toni/dotfiles.git
-----> run install.sh
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.vimperatorrc .
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.bashrc .
ln -nfs dotfiles/i3 .config/i3

```

