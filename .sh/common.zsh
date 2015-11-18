export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# cd without cd
setopt auto_cd

# make all cd operation pushd
setopt auto_pushd

setopt list_packed
setopt nolistbeep
setopt noautoremoveslash
setopt IGNOREEOF

autoload -Uz colors
autoload -Uz compinit
autoload -Uz vcs_info

# completion
if [ -f ~/.dircolors ]; then
    if type dircolors > /dev/null 2>&1; then
        eval $(dircolors ~/.dircolors)
    elif type gdircolors > /dev/null 2>&1; then
        eval $(gdircolors ~/.dircolors)
    fi
else
    export LS_COLORS='di=01;34:ln=01;35:so=01;32:pi=01;33:ex=01;31:bd=01;46;34:cd=01;43;34:su=01;41;30:sg=01;46;30:tw=01;42;30:ow=01;43;30'
fi
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':compinstall' filename '~/.zshrc'
compinit

bindkey -e

# prompt settings
RPROMPT="%1(v|%F{green}%1v%f|)"
PROMPT="
%F{yellow}%~%f
%n $ "

zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "+"
zstyle ':vcs_info:git:*' unstagedstr "-"
zstyle ':vcs_info:git:*' formats '(%s)-[%c%u%b]'
zstyle ':vcs_info:git:*' actionformats '(%s)-[%c%u%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
