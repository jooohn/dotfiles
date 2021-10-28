# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [[ -d "${ZDOTDIR:-$HOME}/.zsh" ]]; then
  for file in ${ZDOTDIR:-$HOME}/.zsh/**/*.zsh; do
    source "${file}"
  done
fi

