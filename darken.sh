#todo: handle this in a shell-agnostic, non-hardcoded way
this_file_parent_dir=~/.config/colorshift

# vim picks this up
export CONSOLE_THEME="dark"

# sourced on startup
echo "$this_file_parent_dir/darken.sh" > ~/.config/colorshift/target_file.txt

# modify gnome-terminal default profile
"$this_file_parent_dir/set_gnome_default" Dark

# apply dircolors
source "$this_file_parent_dir/dircolors.sh"
dircolors_file ~/.config/dircolors/dircolors-solarized/dircolors.ansi-dark

# zsh suggestion style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'
