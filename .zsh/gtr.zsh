gtr-fzf() {
  git gtr list --porcelain | awk '{print $2}' | fzf
}

gtr-editor() {
  git gtr editor $(gtr-fzf)
}

gtr-ai() {
  git gtr ai $(gtr-fzf)
}

gtr-go() {
  cd "$(git gtr go $(gtr-fzf))"
}

gtr-new() {
  git gtr new $1
  cd "$(git gtr go $1)"
}

gtr-clean() {
  git gtr clean --merged --yes
}