alias setclip="xclip -selection c"
alias studentenv="ssh -Y garobles@linux.student.cs.uwaterloo.ca gnome-terminal ~/ &"
alias mv="mv -i"
alias rm="rm -i"
alias ..="cd .."
alias 488="cd ~/3b/cs488 && ls"
alias 343="cd ~/3b/cs343 && ls"
alias 348="cd ~/3b/cs348 && ls"
alias 380="cd ~/3b/se380 && ls"
alias 390="cd ~/3b/se390 && ls"
alias 464="cd ~/3b/se464 && ls"
alias open="xdg-open"
alias gs="git status"
alias vim="nvim"

# Command to rename by pattern
rn () {
    pattern=${1}
    to=${2}
    if [ $pattern == "" ]; then
        echo "needs pattern";
    else
        for f in $(eval ls "*$pattern*" -d); do
            mv "$f" "${f/$pattern/$to}";
        done;
    fi;
}


# historial ignores repeated historial and starting with spaces
export HISTCONTROL=ignoreboth 
# Have no idea what this does
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
# set editor
export EDITOR=nvim
export VISUAL=nvim
# enable vi mode
set -o vi
# set custom PS1
_SYMBOL=$(tput setaf 3)
_TIME=$(tput setaf 0)
_HOST=$(tput setaf 4)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)
export PS1="${_TIME}\D{%R}${_SYMBOL}@${_HOST}\H${BOLD}\\\\\W${_SYMBOL}\$ ${_RESET} "
