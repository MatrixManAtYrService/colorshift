dircolors_file() {
    if [[ -f "$1" ]] ; then
        eval "$(dircolors "$1")"
    else
        echo "$1 not found.  Consider running 'git submodule update --init'"
    fi
}
