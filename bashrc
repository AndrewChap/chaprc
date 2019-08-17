# history search
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# quick helper function to source bashrc
function sb(){
    echo sourcing ~/.bashrc
    source ~/.bashrc
}
# quick helper function to edit bashrc
function eb(){
    vi ~/.bashrc
}

# Only show directory in bash prompt, not entire path
PS1='${PWD#"${PWD%/*/*}/"} \$ '




# set git editor to vim
export GIT_EDITOR=vim

# Who want's to type out python3?
alias py3=python3
