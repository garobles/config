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
alias r="ranger"
alias vim="nvim"
alias godot="~/Repos/godot/bin/Godot_v3.2.3-stable_x11.64"

# Command to rename by pattern
rn () {
    pattern="${1}"
    to="${2}"
    if [ "$pattern" == "" ]; then
        echo "needs pattern";
    else
        SAVEIFS=$IFS   # Save current IFS
        IFS=$'\n'      # Change IFS to new line
        for f in $(eval ls "*'$pattern'*" -d); do
            mv -iv "$f" "${f/$pattern/$to}";
        done;
        IFS=$SAVEIFS   # Restore IFS
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
_SYMBOL='\[$(tput setaf 11)\]'
_BLACK='\[$(tput setaf 8)\]'
_TIME='\[$(tput sgr0)\]'
_HOST='\[$(tput setaf 6)\]'
_RESET='\[$(tput sgr0)\]'
_DIR='\[$(tput setaf 4)\]'
export PS1="\n${_TIME}\D{%R}${_BLACK}@${_HOST}\H${_SYMBOL}${_BLACK}:${_DIR}\W${_SYMBOL}\$ ${_RESET}"

# needed for vulkan development
source ~/Repos/VulkanSdk/setup-env.sh
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
