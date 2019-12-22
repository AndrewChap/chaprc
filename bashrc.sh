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
    echo vi ~/.bashrc
    vi ~/.bashrc
}

# Only show directory in bash prompt, not entire path, from 
# https://unix.stackexchange.com/questions/216953/show-only-current-and-parent-directory-in-bash-prompt
PS1='${PWD#"${PWD%/*/*}/"} \$ '

# set git editor to vim
export GIT_EDITOR=vim

# Who wants to type out python3?
alias py3=python3


# FUNCTIONS SPECIFIC TO MY GOOGLE CLOUD PLATFORM ENVIRONMENT
export F='/home/amchap06/python-docs-samples/appengine/flexible'
# cd to flex app source and start up the virtual environment
function w(){
    echo gcloud config set project andrewchap
    echo cd ~/website
    echo source helpers.sh
    gcloud config set project andrewchap
    cd ~/website
    source helpers.sh
}
function m(){
    echo cd $F/mortapp
    echo source ~/envm/bin/activate
    echo gcloud config set project mortfl
    echo source helpers.sh
    cd $F/mortapp
    source ~/envm/bin/activate
    gcloud config set project mortfl
    source helpers.sh
}
function s(){
    cd ~/stock-comparer
    source env-s/bin/activate
    gcloud config set project stockcompare
    source helpers.sh
}

