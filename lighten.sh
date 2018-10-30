#todo: handle this in a shell-agnostic, non-hardcoded way
this_file_parent_dir=~/.config/colorshift

# vim picks this up
export CONSOLE_THEME="light"

# sourced on startup
echo "$this_file_parent_dir/lighten.sh" > ~/.config/colorshift/target_file.txt

"$this_file_parent_dir/set_gnome_default" Light

source "$this_file_parent_dir/dircolors.sh"
dircolors_file ~/.config/dircolors/dircolors-solarized/dircolors.ansi-dark

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'
