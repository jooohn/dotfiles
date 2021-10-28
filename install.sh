#!/bin/bash -e

HERE=$(cd $(dirname $0) && pwd)

cd ~

# install brew packages
for f in Bundlefile .gitconfig .tmux.conf .vim .vimrc .zsh .zshrc; do
  ln -s $HERE/$f .
done

# mas signin $(git config user.email)
brew bundle

# install dein
ghq get git@github.com:Shougo/dein.vim.git
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/dein-installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh /tmp/dein-installer.sh ~/.dein

echo "execute the following script after opening vim"
echo "------------"
echo ":call dein#install()"
echo "------------"

# install prezto
ghq get git@github.com:jooohn/prezto.git
ln -s $(ghq root)/github.com/jooohn/prezto ~/.zprezto

# install solarized
ghq get git@github.com:altercation/vim-colors-solarized.git
ln -s $(ghq root)/github.com/altercation/vim-colors-solarized/colors/solarized.vim .vim/colors/


