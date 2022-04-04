autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

get_git_branch() {
    git branch 2> /dev/null | awk '{if (match($0, "^*")) printf "%%F{cyan}(%s)%%f ", $2}'
}

get_venv() {
    if [ -n "$VIRTUAL_ENV" ]; then printf '%%F{magenta}[%s]%%f ' $(basename "$VIRTUAL_ENV"); fi
}

setopt PROMPT_SUBST
PS1='╭─%B%F{blue}%n%f @ %F{yellow}%M%f: %1~ $(get_git_branch)$(get_venv)
╰─%(?.🙂.👿)->%b '

HISTFILE="$HOME/.cache/zsh/history"
HISTSIZE=1000
SAVEHIST=1000
bindkey '^r' history-incremental-search-backward

bindkey -v '^?' backward-delete-char

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias ls='ls -p --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias dotgit="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias icat='kitty +kitten icat'
alias ssh='TERM=xterm ssh'

. /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
