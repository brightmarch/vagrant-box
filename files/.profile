# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
if [ -n "$BASH_VERSION" ]; then

    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

PATH="/opt/php/7.3/bin:$PATH"

# Command Line
export PS1="[\[\033[01;96m\]vagrant:\w\[\033[00m\]] (\[\033[01;96m\]\u@\H \$(date +%H:%M:%S)\[\033[00m\])# "

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

# Application Aliases
