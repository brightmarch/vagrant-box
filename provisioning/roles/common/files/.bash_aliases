# Binary overrides
alias ls='ls -laF --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Helper aliases
alias cd-apps='cd /var/apps/'
alias ..='cd ..'

if [ -f ~/.bash_envvars ]; then
    . ~/.bash_envvars
fi
