export EDITOR=vim
export GOPATH="${HOME}"
export PATH="${PATH}:${GOPATH}/bin"
export GHQ_ROOT="${GOPATH}/src"

export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_DEFAULT_OPTS="--reverse --inline-info --ansi -1 -0 -m"

# rbenv is loaded as prezto plugin.
# if [ -d "$HOME/.rbenv" ]; then
#   export PATH="$HOME/.rbenv/bin:$PATH"
#   eval "$(rbenv init - --no-rehash)"
# fi

# nvm is loaded as prezto plugin.
# if [ -d "$HOME/.nvm" ]; then
#   . ${HOME}/.nvm/nvm.sh
# fi
