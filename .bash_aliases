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
alias gs="git status"
alias vim="nvim"

# Command to rename by pattern
rn () {
    pattern=${1}
    to=${2}
    depth=${3}
    if [ $pattern == "" ]; then
        echo "needs pattern";
    else
        curdepth=1;
        while [ $curdepth < $depth ]; do
            for f in $(eval ls "*$pattern*" -d); do
                mv "$f" "${f/$pattern/$to}";
            done;
            echo "hi";
            for d in $(eval ls -ld -- */); do
                cd "$d";
                for f in $(eval ls "*$pattern*" -d); do
                    mv "$f" "${f/$pattern/$to}";
                done;
                cd ..;
                curdepth=$((curdepth + 1));
            done;
        done;
    fi;
}


# historial ignores repeated historial and starting with spaces
export HISTCONTROL=ignoreboth 
# Have no idea what this does
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

