# Binary overrides
alias ls='ls -laF --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Helper aliases and functions
alias ..='cd ..'

function gitroot {
    cwd=`pwd`
    while [ ! -d ".git" ]; do
        pwd=`pwd`
        if [ $pwd == "/" ]; then
            echo "Could not find .git directory, keeping you in $cwd"
            cd $cwd
            break
        fi
    cd ..
    done
}

if [ -f ~/.bash_envvars ]; then
    . ~/.bash_envvars
fi

# Application specific aliases
