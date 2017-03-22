# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Command Line
export PS1="[\[\033[01;32m\]vagrant:\w\[\033[00m\]] (\[\033[01;32m\]\u@\H \$(date +%H:%M:%S)\[\033[00m\])# "

# Binary Overrides
alias ls='ls -laF --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Helper Aliases
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

# Application Aliases
