HERE=$(cd $(dirname $0) && pwd)

# install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | bash

# install z
git clone https://github.com/rupa/z.git ~/.sh/plugins/

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
