# ~/.bashrc
# by tom faughnan
# there are many like it, but this one is mine

# if shell is not interactive, do nothing
[[ $- != *i* ]] && return

# show git branch on prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' | awk '{printf $0}'
}

# happy face if last exit code was 0, angry otherwise
exit_emoji() {
    if [ "$1" = 0 ]; then
        printf 🙂
    else
        printf 😡
    fi
}

# finally, construct the prompt
# NOTE: the colors don't mean much, since i usually use pywal
PS1="╭─\[\033[1;34m\]\u\[\033[1;37m\] @ \[\033[1;33m\]\h\[\033[1;37m\]: \W\$(LAST_EXIT=\$? ; parse_git_branch ; printf '\n╰─' ; exit_emoji \$LAST_EXIT)->\[\033[0m\] "

# more tab completion following commands
complete -cf sudo
complete -c man
complete -c which
complete -c whereis

# helps keep formatting when window resized
shopt -s checkwinsize
# default for interactive shells, but just to make sure
shopt -s expand_aliases
# append history, don't overwrite it
shopt -s histappend

# put all my sloppy scripts on the PATH
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# no emacs allowed here
export VISUAL=vim
export EDITOR=vim

# so i can do my math homework
export TEXMFHOME=$HOME/.texmf

# pfetch config
export PF_SOURCE=$HOME/.config/pfetch.conf

# apply wal color theme
(cat ~/.cache/wal/sequences &)

# some helpful aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias df="df -h"
alias ls='ls -p --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# how i keep track of my dotfiles
alias dotgit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# view images right in the terminal!
alias icat="kitty +kitten icat"

# useful for launching GUI programs then killing terminal
gui() {
    nohup "$@" > /dev/null 2>&1 & disown
    exit
}
complete -cf gui

