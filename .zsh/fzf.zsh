fzf-file() {
    local file
    file=$(fzf --query="$1" --select-1 --exit-0)
    [ -n "$file" ] && ${EDITOR:-vim} "$file"
}

fzf-directory() {
    local dir
    dir=$(find ${1:-*} -path '*/\.*' -prune \
        -o -type d -print 2> /dev/null | fzf +m) &&
        cd "$dir"
}

fzf-ghq-directory() {
    local src
    src=$(ghq list | fzf) && cd "${HOME}/src/${src}"
}
