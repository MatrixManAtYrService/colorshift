This project provides two aliases: `darken` and `lighten`

They will modify the start-up color themes of various applications (e.g. vim, zsh).  I use them to switch between solarized-dark and solarized-light.

Maybe one day I'll make this fully generic so anyone can use it.  For now, it may contain hard-coded references to other compoents in [my home directory](https://github.com/MatrixManAtYrService/home).  You may still find it useful if you find those and change them to indicate your resources (maybe start by searching for '~').

## Integrations

#### vim

requires https://github.com/altercation/vim-colors-solarized

    colorscheme solarized

    if !empty($CONSOLE_THEME)
        let &bg=$CONSOLE_THEME
    else
        set bg=dark
    endif

#### zsh-autosuggestions

No configs necessary.  Autosuggestion color set whether or not it is installed.  Be sure to include zsh section (below) *after* you source zsh-autosuggestions.

#### dircolors

modify [darken.sh](darken.sh) or [lighten.sh](lighten.sh) to provide a path to the preferred dircolors file.

#### gnome-terminal

(gnome 3 only) After sourcing [darken.sh](darken.sh) or [lighten.sh](lighten.sh), the default profile will be changed to the profile named in those files.

#### zsh/bash

.zshrc / .bashrc

    alias lighten='source ~/.config/colorshift/lighten.sh'
    alias darken='source ~/.config/colorshift/darken.sh'
    source $(cat ~/.config/colorshift/target_file.txt) &> /dev/null

